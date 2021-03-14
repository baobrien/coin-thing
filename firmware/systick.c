
#include <libopencm3/stm32/rcc.h>
#include <libopencm3/stm32/gpio.h>
#include <libopencm3/cm3/nvic.h>
#include <libopencm3/cm3/systick.h>

/* Called when systick fires */
void sys_tick_handler(void)
{
    gpio_toggle(GPIOC, GPIO8);
}

/*
 * Set up timer to fire every x milliseconds
 * This is a unusual usage of systick, be very careful with the 24bit range
 * of the systick counter!  You can range from 1 to 2796ms with this.
 */
static void systick_setup()
{
    systick_set_clocksource(STK_CSR_CLKSOURCE_AHB);
    /* clear counter so it starts right away */
    STK_CVR = 0;

    systick_set_reload(rcc_ahb_frequency / 8 / 1000);
    systick_counter_enable();
    systick_interrupt_enable();
}

/* set STM32 to clock by 48MHz from HSI oscillator */
static void clock_setup(void)
{
    rcc_clock_setup_in_hsi_out_48mhz();

    /* Enable clocks to the GPIO subsystems */
    rcc_periph_clock_enable(RCC_GPIOC);
}
