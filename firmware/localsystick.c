
#include <libopencm3/stm32/rcc.h>
#include <libopencm3/stm32/gpio.h>
#include <libopencm3/cm3/nvic.h>
#include <libopencm3/cm3/systick.h>
#include <stdint.h>

#include "localsystick.h"

volatile uint64_t systime_ms;

void sys_tick_handler(void)
{
    systime_ms += 1;
}

void delayms(uint32_t howlong)
{
    uint64_t finish = systime_ms + (uint64_t) howlong;
    while (systime_ms < finish) {
        __asm("wfi");
    }
}

uint64_t time_ms()
{
    return systime_ms;
}

uint64_t time_us()
{
    uint64_t us = (uint64_t) (STK_CVR / rcc_ahb_frequency);
    return us + 1000 * systime_ms;
}

void systick_setup()
{
    systick_set_clocksource(STK_CSR_CLKSOURCE_AHB);
    STK_CVR = 0;

    systick_set_reload(rcc_ahb_frequency / 1000);
    systick_counter_enable();
    systick_interrupt_enable();
    systime_ms = 0;
}
