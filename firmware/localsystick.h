
#include <libopencm3/stm32/rcc.h>
#include <libopencm3/stm32/gpio.h>
#include <libopencm3/cm3/nvic.h>
#include <libopencm3/cm3/systick.h>

#ifndef __LOCALSYSTICK_H
#define __LOCALSYSTICK_H

void systick_setup(void);

uint64_t time_us(void);
uint64_t time_ms(void);
void delayms(uint32_t howlong);

#endif