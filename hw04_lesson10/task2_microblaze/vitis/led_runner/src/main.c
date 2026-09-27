/*
## ЗАВДАННЯ 1. ZYNQ PS

Створити проект у Vivado.
Зібрати Block Design: 
- Zynq PS
- AXI GPIO (LED, кнопки, перемикачі)
- AXI Timer.

Реалізувати "біжучу доріжку" на світлодіодах:
- Один запалений LED переміщується по колу (LED0 → LED1 → LED2 →
  LED3 → LED0 → ...)
- Швидкість переміщення визначає AXI Timer (не програмна затримка
  циклом)
- Один перемикач обирає напрямок руху (вперед/назад)
- Кнопки змінюють швидкість руху/зупиняють/поновлють рух


btn0 - швидше
btn1 - повільніше
btn2 - зупиняють/поновлють рух
sw0  - напрямок

*/


#include "xgpio.h"
#include "xtmrctr.h"
#include "xil_printf.h"
#include "xinterrupt_wrap.h"
#include "xparameters.h"
#include <stdint.h>
#include <stdbool.h>

#define LED_BASEADDR     XPAR_AXI_GPIO_0_BASEADDR   // 4 біта, виходи
#define BTN_BASEADDR     XPAR_AXI_GPIO_1_BASEADDR   // 4 біта, входи
#define SW_BASEADDR      XPAR_AXI_GPIO_2_BASEADDR   // 2 біта, входи
#define TIMER_BASEADDR   XPAR_AXI_TIMER_0_BASEADDR


#ifndef SIM_LED_DIV
#define SIM_LED_DIV 1U
#endif

#ifndef SIM_POLL_DIV
#define SIM_POLL_DIV 1U
#endif



#define TIMER_CNT  0   // AXI Timer має два лічильники, використовуємо нульовий
#define CLK_HZ  50000000U
#define CLK_T_10PR (CLK_HZ / 2 / 10 / SIM_LED_DIV)
#define CLK_T_100PR (CLK_HZ / 2  / SIM_LED_DIV)


#define BTN_CNT  1
#define BTN_POLL_HZ  1000U
#define DEBOUNCE_MS  10U
#define DEBOUNCE_COUNT_MAX  (DEBOUNCE_MS * BTN_POLL_HZ / 1000U)



typedef struct {
    XTmrCtr *timer;
    XGpio *led_gpio;
    XGpio *btn_gpio;
    XGpio *sw_gpio;
} app_ctx;

XGpio led_gpio, btn_gpio, sw_gpio;
XTmrCtr timer;


app_ctx main_app_ctx;

volatile u32 timer_reset_value = CLK_HZ / 2 / SIM_LED_DIV;   // 0.5 с;
volatile u8 leds = 1;
volatile bool dir_left = true;
volatile u32 debounce_counter = 0;
volatile u32 btn_clean = 0;


void timer_handler(void *CallBackRef, u8 TmrCtrNumber) {

    if (TmrCtrNumber == 0) { // Рухаєм світлодіоди
        app_ctx *InstancePtr = (app_ctx *)CallBackRef;

        if (XTmrCtr_IsExpired(InstancePtr->timer, TmrCtrNumber)) {

            leds = (dir_left ? ((leds << 1) | (leds >> 3))
                    : ((leds >> 1) | (leds << 3))) & 0x0F;


            XGpio_DiscreteWrite(InstancePtr->led_gpio, 1, leds);
        }
    } else { // Опитуєм кнопки та фільтруємо

        u8 btn_now = XGpio_DiscreteRead(&btn_gpio, 1);

        if (btn_now != btn_clean) {
            debounce_counter++;

            if (debounce_counter == DEBOUNCE_COUNT_MAX) {
                btn_clean = btn_now;
                debounce_counter = 0;
            }
        } else {
            debounce_counter = 0;
        }

    }
    
}

int main(void) {
    int status;

    status = XGpio_Initialize(&led_gpio, LED_BASEADDR);
    if (status != XST_SUCCESS) {
        xil_printf("LED GPIO init failed (%d)\r\n", status);
        return XST_FAILURE;
    }

    status = XGpio_Initialize(&btn_gpio, BTN_BASEADDR);
    if (status != XST_SUCCESS) {
        xil_printf("BTN GPIO init failed (%d)\r\n", status);
        return XST_FAILURE;
    }

    status = XGpio_Initialize(&sw_gpio, SW_BASEADDR);
    if (status != XST_SUCCESS) {
        xil_printf("SW GPIO init failed (%d)\r\n", status);
        return XST_FAILURE;
    }

    status = XTmrCtr_Initialize(&timer, TIMER_BASEADDR);
    if (status != XST_SUCCESS) {
        xil_printf("TIMER init failed (%d)\r\n", status);
        return XST_FAILURE;
    }

    main_app_ctx.led_gpio = &led_gpio;
    main_app_ctx.btn_gpio = &btn_gpio;
    main_app_ctx.sw_gpio = &sw_gpio;
    main_app_ctx.timer = &timer;

    // Налаштування таймера для перемикання свитлодіодів
    XTmrCtr_SetHandler(&timer, timer_handler, &main_app_ctx);
    XTmrCtr_SetOptions(&timer, TIMER_CNT, XTC_INT_MODE_OPTION | XTC_AUTO_RELOAD_OPTION | XTC_DOWN_COUNT_OPTION);
    XTmrCtr_SetResetValue(&timer, TIMER_CNT, timer_reset_value);

    // Налаштування таймера для опитування кнопок
    XTmrCtr_SetOptions(&timer, BTN_CNT, XTC_INT_MODE_OPTION | XTC_AUTO_RELOAD_OPTION | XTC_DOWN_COUNT_OPTION);
    XTmrCtr_SetResetValue(&timer, BTN_CNT, CLK_HZ / BTN_POLL_HZ / SIM_POLL_DIV);   // 1 мс
    
    /* 
        file: platform/hw/sdt/pl.dtsi
        axi_timer_0: timer@42800000 {
                    interrupts = < 0 29 4 >;
        ....
    */
    XSetupInterruptSystem(&timer, XTmrCtr_InterruptHandler,
        XPAR_AXI_TIMER_0_INTERRUPTS,     // 0x401d, не 29
        XPAR_AXI_TIMER_0_INTERRUPT_PARENT,
        0x0);

   
    XTmrCtr_Start(&timer, TIMER_CNT);
    XTmrCtr_Start(&timer, BTN_CNT);


    // Не настроюю XGpio_SetDataDirection бо напрямок пінів вже виставлено в блок дізайні

    while (1) {
        static u8 btn_prev;
        u8 now = btn_clean;
        u8 rising = now & ~btn_prev;   // Які кнопки щойно нажаті
        btn_prev  = now;

        if (rising & 0x1) {
            /* Швидше */

            u32 tmp = timer_reset_value - CLK_T_10PR;
            timer_reset_value = tmp > CLK_T_10PR ? tmp: CLK_T_10PR; // Шаг змін по 10%

            XTmrCtr_SetResetValue(&timer, TIMER_CNT, timer_reset_value);
        }

        if (rising & 0x2) {
            /* Повільніше */

            u32 tmp = timer_reset_value + CLK_T_10PR;
            timer_reset_value = tmp < CLK_T_100PR  ? tmp: CLK_T_100PR; // Шаг змін по 10% 

            XTmrCtr_SetResetValue(&timer, TIMER_CNT, timer_reset_value);
        }

        if (rising & 0x4) { 
            /* Зупиняють/Поновлють рух */

            static bool running = true;
            
            running = !running;

            if (running) XTmrCtr_Start(&timer, TIMER_CNT);
            else XTmrCtr_Stop(&timer, TIMER_CNT);
        }


        dir_left = (bool) (XGpio_DiscreteRead(&sw_gpio, 1) & 0x01);

    }

    return 0;
}
