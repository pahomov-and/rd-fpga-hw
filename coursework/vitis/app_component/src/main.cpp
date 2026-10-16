/*
 * Програма імітує мікрофон: жене пилкоподібний сигнал у регістр IN,
 * читає назад PEAK і LEVEL, а рівень показує на SSD1306 стовпчиком і цифрою.
 *
 */

#include "xparameters.h"
#include "xil_io.h"
#include "xil_types.h"

#ifdef USE_DISPLAY
#include "xiic_l.h"
#endif

#ifndef SIMULATION
#include "sleep.h"

// Пауза між відліками. Без неї крок визначається лише часом обміну по I2C
#define STEP_MS 40
#endif

/* регістри IP */

#define SL_BASE     XPAR_SOUND_LEVEL_0_BASEADDR   /* 0x44A00000 */

#define REG_IN      0x00    /* запис відліку = один крок */
#define REG_N       0x04    /* розмір вікна, 1..8 */
#define REG_PEAK    0x08    /* пік за модулем, беззнаковий */
#define REG_LEVEL   0x0C    /* рівень 0..8 */

static inline void sl_write(u32 off, u32 val) { Xil_Out32(SL_BASE + off, val); }
static inline u32  sl_read (u32 off)          { return Xil_In32(SL_BASE + off); }

/* ------------------------------------------------------------- вхідний сигнал */

/*
 * Пилка з кроком 4096. При N=1 рівень це |x| >> 12, тому кожен крок
 * підіймає рівень рівно на одиницю: 0,1,2...7, далі 32767 (ще 7) і
 * -32768 (нарешті 8), і назад униз.
 *
 * Відлік -32768 тут не випадковий: його модуль на одиницю більший за
 * найбільше додатне число, і лише він дає рівень 8.
 */
static const int RAMP[] = {
	0, 4096, 8192, 12288, 16384, 20480, 24576, 28672, 32767,
	-32768,
	28672, 24576, 20480, 16384, 12288, 8192, 4096
};
static const int RAMP_LEN = (int)(sizeof(RAMP) / sizeof(RAMP[0]));

/* дисплей */

#ifdef USE_DISPLAY

#define IIC_BASE    XPAR_AXI_IIC_0_BASEADDR
#define SSD1306_ADDR  0x3C

#define W 128
#define H 64

static u8 fb[W * H / 8];     /* 1024 байти: байт = 8 пікселів по вертикалі */
static u8 tx[W * 8 + 1];     /* буфер посилки: керівний байт + дані */

/*
 * Команди йдуть одним пакетом після керівного байта 0x00.
 */
static int ssd1306_cmd(const u8 *cmds, unsigned n)
{
	tx[0] = 0x00;
	for (unsigned i = 0; i < n; i++)
		tx[1 + i] = cmds[i];
	return (int)XIic_Send(IIC_BASE, SSD1306_ADDR, tx, n + 1, XIIC_STOP) == (int)(n + 1);
}

static const u8 INIT_SEQ[] = {
	0xAE,             /* дисплей вимкнено на час налаштування */
	0xD5, 0x80,       /* частота кадрів */
	0xA8, 0x3F,       /* multiplex ratio = 64 рядки */
	0xD3, 0x00,       /* зсув по вертикалі */
	0x40,             /* стартовий рядок */
	0x8D, 0x14,       /* увімкнути внутрішній перетворювач живлення */
	0x20, 0x00,       /* горизонтальна адресація */
	0xA1, 0xC8,       /* дзеркалення по X та Y під звичайну орієнтацію плати */
	0xDA, 0x12,       /* конфігурація виводів COM */
	0x81, 0xCF,       /* контраст */
	0xD9, 0xF1,       /* фази заряду */
	0xDB, 0x40,       /* рівень VCOMH */
	0xA4,             /* показувати вміст пам'яті, а не всі пікселі */
	0xA6              /* пряма полярність */
	/* 0xAF навмисно не тут - дисплей вмикається після очищення пам'яті */
};

static const u8 DISPLAY_ON[] = { 0xAF };

static void px(int x, int y)
{
	if (x < 0 || x >= W || y < 0 || y >= H) return;
	fb[(y >> 3) * W + x] |= (u8)(1 << (y & 7));
}

/* Шрифт 5x7, цифри 0..9. По стовпцях, молодший біт - верхній піксель. */
static const u8 FONT[10][5] = {
	{0x3E,0x51,0x49,0x45,0x3E}, {0x00,0x42,0x7F,0x40,0x00},
	{0x42,0x61,0x51,0x49,0x46}, {0x21,0x41,0x45,0x4B,0x31},
	{0x18,0x14,0x12,0x7F,0x10}, {0x27,0x45,0x45,0x45,0x39},
	{0x3C,0x4A,0x49,0x49,0x30}, {0x01,0x71,0x09,0x05,0x03},
	{0x36,0x49,0x49,0x49,0x36}, {0x06,0x49,0x49,0x29,0x1E}
};

static void draw_digit(int d, int x0, int y0, int scale)
{
	if (d < 0 || d > 9) return;
	for (int col = 0; col < 5; col++) {
		u8 bits = FONT[d][col];
		for (int row = 0; row < 7; row++) {
			if (!(bits & (1 << row))) continue;
			for (int dx = 0; dx < scale; dx++)
				for (int dy = 0; dy < scale; dy++)
					px(x0 + col * scale + dx, y0 + row * scale + dy);
		}
	}
}

/*
 * Стовпчик: вісім сегментів по 14 стовпців із проміжком у два.
 * Заповнених рівно стільки, скільки показує LEVEL.
 */
static void draw_bar(int level, int page_top, int pages)
{
	for (int seg = 0; seg < 8; seg++) {
		if (seg >= level) continue;
		int x0 = seg * 16;
		for (int x = x0; x < x0 + 14; x++)
			for (int y = page_top * 8; y < (page_top + pages) * 8; y++)
				px(x, y);
	}
}

/*
 * Вивід вікна.
 */
static void flush(int col0, int col1, int page0, int page1)
{
	u8 win[] = { 0x21, (u8)col0, (u8)col1, 0x22, (u8)page0, (u8)page1 };
	ssd1306_cmd(win, sizeof(win));

	unsigned n = 0;
	tx[n++] = 0x40;
	for (int p = page0; p <= page1; p++)
		for (int c = col0; c <= col1; c++)
			tx[n++] = fb[p * W + c];

	XIic_Send(IIC_BASE, SSD1306_ADDR, tx, n, XIIC_STOP);
}

static void show(int level)
{
	for (unsigned i = 0; i < sizeof(fb); i++) fb[i] = 0;

	draw_bar(level, 0, 2);            /* сторінки 0..1 - стовпчик */
	draw_digit(level, 56, 32, 3);     /* сторінки 4..6 - цифра по центру */

	flush(0, W - 1, 0, 1);
	flush(56, 56 + 14, 4, 6);
}

#endif /* USE_DISPLAY */


/*
 * Діагностика для симуляції. UART у дизайні немає, друкувати нікуди, тож
 * стан видно через ці змінні: вони глобальні й volatile, тому лягають у
 * пам'ять під власними іменами, а не оптимізуються в регістри.
 */
volatile u32 g_steps      = 0;
volatile u32 g_last_peak  = 0;
volatile u32 g_last_level = 0;

int main(void)
{
	/*
	 * N=1: вікно з одного відліку, тож PEAK дорівнює модулю поточного.
	 * Саме при N=1 пилка дає рівно один рівень на крок - це найнаочніше
	 * і для хвиль, і для дисплея.
	 */
	sl_write(REG_N, 1);

#ifdef USE_DISPLAY
	XIic_DynInit(IIC_BASE);
	ssd1306_cmd(INIT_SEQ, sizeof(INIT_SEQ));

	// Після подачі живлення GDDRAM дисплея містить випадковий вміст.
	flush(0, W - 1, 0, H / 8 - 1);
	ssd1306_cmd(DISPLAY_ON, sizeof(DISPLAY_ON));
#endif

	for (;;) {
		for (int i = 0; i < RAMP_LEN; i++) {
			sl_write(REG_IN, (u32)RAMP[i]);

			g_last_peak  = sl_read(REG_PEAK);
			g_last_level = sl_read(REG_LEVEL);

#ifdef USE_DISPLAY
			show((int)g_last_level);
#endif
			g_steps = g_steps + 1;

#ifndef SIMULATION
			msleep(STEP_MS);
#endif
		}

#ifdef SIMULATION
		// У симуляції одного проходу пилки досить, далі лише час
		break;
#endif
	}

	for (;;) { }
	return 0;
}
