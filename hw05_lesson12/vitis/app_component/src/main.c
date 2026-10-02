/*
 * ДЗ №5 (лекція 12) - приймання кадру через AXI DMA.
 *
 * Послідовність:
 *   кнопка -> озброїти S2MM -> дозволити приймання -> чекати завершення.
 *
 * Кадр 320x200, 8 біт на піксель. Модуль frame_rx пакує байти у 32-бітні
 * слова і віддає їх як AXI4-Stream; DMA пише потік у axi4_full_ram.
 *
 */

#include "xgpio.h"
#include "xaxidma.h"
#include "xparameters.h"
#include "xstatus.h"

#define FRAME_WIDTH    320
#define FRAME_HEIGHT   200
#define FRAME_BYTES    (FRAME_WIDTH * FRAME_HEIGHT)   /* 64 000 */

#define GPIO_BASEADDR  XPAR_AXI_GPIO_0_BASEADDR
#define DMA_BASEADDR   XPAR_AXI_DMA_0_BASEADDR
#define RAM_BASE       XPAR_AXI4_FULL_RAM_0_BASEADDR

#define GPIO_CH_BTN    1    /* канал 1: вхід, кнопка */
#define GPIO_CH_START  2    /* канал 2: вихід, start для frame_rx */

static XGpio   gpio;
static XAxiDma dma;

/* Діагностика: видно у симуляції, бо друкувати нікуди */
volatile u32 frames_done  = 0;
volatile u32 last_status  = 0;

int main(void)
{
    int status;
    XAxiDma_Config *cfg;
    u32 btn_prev = 0;

    // Напрямки каналів задані у блок-дизайні (канал 1 - всі входи, канал 2 - всі виходи), тому XGpio_SetDataDirection не потрібен
    status = XGpio_Initialize(&gpio, GPIO_BASEADDR);
    if (status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    cfg = XAxiDma_LookupConfig(DMA_BASEADDR);
    if (cfg == NULL) {
        return XST_FAILURE;
    }

    status = XAxiDma_CfgInitialize(&dma, cfg);
    if (status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    if (XAxiDma_HasSg(&dma)) {
        return XST_FAILURE;
    }

    /* Початковий стан. Приймання заборонено. Нуль тут потрібен ще й для
       того, щоб перше ж натискання дало фронт 0->1 - frame_rx озброюється
       саме по фронту, а не по рівню.
    */
    XGpio_DiscreteWrite(&gpio, GPIO_CH_START, 0);

    while (1) {
        u32 btn     = XGpio_DiscreteRead(&gpio, GPIO_CH_BTN) & 1u;
        u32 pressed = btn & ~btn_prev;
        btn_prev    = btn;

        if (!pressed) {
            continue;
        }

        status = XAxiDma_SimpleTransfer(&dma, (UINTPTR)RAM_BASE, FRAME_BYTES, XAXIDMA_DEVICE_TO_DMA);
        if (status != XST_SUCCESS) {
            last_status = (u32)status;
            continue;
        }

        // Дозволити приймання. frame_rx дочекається найближчого pix_sof і збере рівно один кадр
        XGpio_DiscreteWrite(&gpio, GPIO_CH_START, 1);

        // Чекати, поки DMA запише весь кадр у пам'ять.
        while (XAxiDma_Busy(&dma, XAXIDMA_DEVICE_TO_DMA)) {}

        // Зняти start, щоб наступне натискання знову дало фронт
        XGpio_DiscreteWrite(&gpio, GPIO_CH_START, 0);

        frames_done++;
    }

    return XST_SUCCESS;
}
