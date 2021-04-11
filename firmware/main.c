/*
 * This file is part of the libopencm3 project.
 *
 * Copyright (C) 2010 Gareth McMullin <gareth@blacksphere.co.nz>
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

#include <stdlib.h>

#include <libopencm3/stm32/rcc.h>
#include <libopencm3/stm32/gpio.h>
#include <libopencm3/stm32/i2c.h>
#include <libopencm3/usb/usbd.h>
#include <libopencm3/usb/cdc.h>
#include <libopencm3/cm3/scb.h>
#include <libopencm3/stm32/f0/syscfg.h>

#include "usb_stuff.h"
#include "notdumbi2c.h"
#include "localsystick.h"
#include "gpio_tca9534a.h"
#include "cointhingus.h"

int main(void)
{
    int i;

    usbd_device *usbd_dev;

    usb_setup(&usbd_dev);

    i2c_setup();

    systick_setup();

    ggpio_dev tca9534;
    // ggpio_pin coin_pol, coin_test, co_hold, fxs_to_coin_1;
    ggpio_init_tca9534(&tca9534, I2C1, 0x3F);
    cointhing coin;
    cointhing_channel *ch;
    ct_init_cointhingusv1(&coin, &tca9534);
    ct_hvpsu_disable(&coin);
    ch = &coin.channels[0];

    // while(1) {
    //     ct_collect(ch);
    //     delayms(1000);
    //     ct_return(ch);
    //     delayms(1000);
    //     ct_test_minrate(ch);
    //     delayms(1000);
    //     ct_test_present(ch);
    //     delayms(1000);
    // }

    while (1) {
        usbd_poll(usbd_dev);
        if (ct_offhook(ch)) {
            while (ct_offhook(ch)) {
                usbd_poll(usbd_dev);
            }
            delayms(30);
            while (ct_offhook(ch) == PHONE_OFFHOOK_FWD) {
                usbd_poll(usbd_dev);
            }
            ct_hvpsu_enable(&coin);
            if (ct_test_present(ch)) {
                if (ct_test_minrate(ch)) {
                    ct_return(ch);
                } else {
                    ct_collect(ch);
                }
            }
            ct_hvpsu_disable(&coin);
        }
    }

    delayms(100);
    while (1)
        usbd_poll(usbd_dev);
}
