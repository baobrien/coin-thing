/*
 * Copyright (C) 2021 Brady O'Brien <baobrien@baobrien.org>
 *
 * This library is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this library.  If not, see <http://www.gnu.org/licenses/>.
 */

#include <libopencm3/stm32/rcc.h>
#include <libopencm3/stm32/gpio.h>
#include <libopencm3/stm32/i2c.h>
#include <libopencm3/usb/usbd.h>

#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>

#include "notdumbi2c.h"
#include "localsystick.h"

void i2c_setup()
{
    rcc_periph_clock_enable(RCC_GPIOF);
    rcc_periph_clock_enable(RCC_I2C1);
    rcc_set_i2c_clock_hsi(I2C1);

    i2c_reset(I2C1);
    gpio_mode_setup(GPIOF, GPIO_MODE_AF, GPIO_PUPD_NONE, GPIO0 | GPIO1);
    gpio_set_af(GPIOF, GPIO_AF1, GPIO0 | GPIO1);
    i2c_peripheral_disable(I2C1);
    i2c_enable_analog_filter(I2C1);
    i2c_set_digital_filter(I2C1, 0);
    /* HSI is at 8Mhz */
    i2c_set_speed(I2C1, i2c_speed_sm_100k, 8);
    i2c_enable_stretching(I2C1);
    i2c_set_7bit_addr_mode(I2C1);
    i2c_peripheral_enable(I2C1);
}

extern int nack_flag;
// Taken from libopencm3, but made less dumb
/**
 * Run a write/read transaction to a given 7bit i2c address
 * If both write & read are provided, the read will use repeated start.
 * Both write and read are optional
 * @param i2c peripheral of choice, eg I2C1
 * @param addr 7 bit i2c device address
 * @param w buffer of data to write
 * @param wn length of w
 * @param r destination buffer to read into
 * @param rn number of bytes to read (r should be at least this long)
 */
bool i2c_transfer7_nodumb(uint32_t i2c, uint8_t addr, uint8_t * w, size_t wn, uint8_t * r, size_t rn)
{
    I2C_ICR(i2c) = 0x0010;
    /*  waiting for busy is unnecessary. read the RM */
    uint64_t transfer_start_time = time_ms();
    if (wn) {
        i2c_set_7bit_address(i2c, addr);
        i2c_set_write_transfer_dir(i2c);
        i2c_set_bytes_to_transfer(i2c, wn);
        if (rn) {
            i2c_disable_autoend(i2c);
        } else {
            i2c_enable_autoend(i2c);
        }
        i2c_send_start(i2c);

        while (wn--) {
            bool wait = true;
            while (wait) {
                bool i2c_txis = i2c_transmit_int_status(i2c);
                bool i2c_nackf = i2c_nack(i2c);
                if (i2c_txis) {
                    wait = false;
                }
                if (i2c_nackf) {
                    return false;
                }
            }
            i2c_send_data(i2c, *w++);
        }
        /* not entirely sure this is really necessary.
         * RM implies it will stall until it can write out the later bits
         */
        if (rn) {
            while (!i2c_transfer_complete(i2c)) ;
        }
    }

    if (rn) {
        /* Setting transfer properties */
        i2c_set_7bit_address(i2c, addr);
        i2c_set_read_transfer_dir(i2c);
        i2c_set_bytes_to_transfer(i2c, rn);
        /* start transfer */
        i2c_send_start(i2c);
        /* important to do it afterwards to do a proper repeated start! */
        i2c_enable_autoend(i2c);

        for (size_t i = 0; i < rn; i++) {
            while (i2c_received_data(i2c) == 0) ;
            r[i] = i2c_get_data(i2c);
        }
    }
    return true;
}
