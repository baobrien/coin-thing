#include <libopencm3/stm32/gpio.h>

#include <stdint.h>
#include <stdlib.h>
#include <stdbool.h>

#include "cointhingus.h"
#include "gpio_tca9534a.h"
#include "localsystick.h"


void ct_ch_default(cointhing_channel * ch)
{
    ggpio_clear(&(ch->phone_co_test));  // Phone->CO
    ggpio_set(&(ch->ct->coin_tc_voltage));
    ggpio_clear(&(ch->ct->coin_tc_polarity));
    delayms(ch->ct->relay_delay_ms);
    ct_co_unhold(ch);
}

void ct_init_cointhingusv1(cointhing * ct, ggpio_dev * tca9534)
{
    ct->n_channels = 1;
    ggpio_get_pin_tca9534(tca9534, &(ct->coin_tc_polarity), GPIO0);
    ggpio_get_pin_tca9534(tca9534, &(ct->coin_tc_voltage), GPIO1);
    ggpio_get_pin_tca9534(tca9534, &(ct->coin_test_read), GPIO7);
    ggpio_get_pin_tca9534(tca9534, &(ct->enable_hv), GPIO6);

    ggpio_direction(&(ct->coin_tc_polarity), GGPIO_DIR_OUTPUT);
    ggpio_direction(&(ct->coin_tc_voltage), GGPIO_DIR_OUTPUT);
    ggpio_direction(&(ct->coin_test_read), GGPIO_DIR_INPUT);
    ggpio_direction(&(ct->enable_hv), GGPIO_DIR_OUTPUT);

    ct->relay_delay_ms = 10;
    ct->hvsupply_powerup = 100;
    ct->coin_test_time = 10;
    ct->coin_rc_time = 250;

    cointhing_channel *ch = &ct->channels[0];
    ch->ch_index = 0;
    ch->ct = ct;
    ggpio_get_pin_tca9534(tca9534, &(ch->co_oh_hold), GPIO2);
    ggpio_get_pin_tca9534(tca9534, &(ch->phone_co_test), GPIO3);
    ggpio_get_pin_tca9534(tca9534, &(ch->offhook_fwd), GPIO4);
    ggpio_get_pin_tca9534(tca9534, &(ch->offhook_rev), GPIO5);

    ggpio_direction(&(ch->co_oh_hold), GGPIO_DIR_OUTPUT);
    ggpio_direction(&(ch->phone_co_test), GGPIO_DIR_OUTPUT);
    ggpio_direction(&(ch->offhook_fwd), GGPIO_DIR_INPUT);
    ggpio_direction(&(ch->offhook_rev), GGPIO_DIR_INPUT);
    ct_ch_default(ch);
}

void ct_hvpsu_enable(cointhing * ct)
{
    ggpio_set(&ct->enable_hv);
    delayms(ct->hvsupply_powerup);
}

void ct_hvpsu_disable(cointhing * ct)
{
    ggpio_clear(&ct->enable_hv);
}

#define COIN_POLARITY_POS false
#define COIN_POLARITY_NEG true

static bool ct_do_coin_thing(cointhing_channel * ch, bool dotest, bool polarity)
{
    bool rv = true;
    ggpio_write(&(ch->ct->coin_tc_voltage), !dotest);  // Set low voltage for coin test;
    ggpio_write(&(ch->ct->coin_tc_polarity), polarity); // Positive coin test volate for coin present/stuck

    ct_co_hold(ch);             // Hold the CO on hook while we do the coin check
    ggpio_set(&(ch->phone_co_test));  // Hook phone up to test/collect voltage
    delayms(ch->ct->relay_delay_ms);  // Relay settling
    if (dotest) {
        delayms(ch->ct->coin_test_time);  // Wait before testing
        rv = !ggpio_read(&(ch->ct->coin_test_read));
        // Reset relays normal
    } else {
        delayms(ch->ct->coin_rc_time);
    }
    ggpio_clear(&(ch->phone_co_test));
    ggpio_set(&(ch->ct->coin_tc_voltage));
    ggpio_clear(&(ch->ct->coin_tc_polarity));
    delayms(ch->ct->relay_delay_ms);  // Relay settling
    ct_co_unhold(ch);
    return rv;
}

bool ct_test_present(cointhing_channel * ch)
{
    return ct_do_coin_thing(ch, true, COIN_POLARITY_POS);
}

bool ct_test_minrate(cointhing_channel * ch)
{
    return ct_do_coin_thing(ch, true, COIN_POLARITY_NEG);
}

void ct_collect(cointhing_channel * ch)
{
    ct_do_coin_thing(ch, false, COIN_POLARITY_POS);
}

void ct_return(cointhing_channel * ch)
{
    ct_do_coin_thing(ch, false, COIN_POLARITY_NEG);
}

int ct_offhook(cointhing_channel * ch)
{
    bool fwd = !ggpio_read(&(ch->offhook_fwd));
    bool rev = !ggpio_read(&(ch->offhook_rev));
    if (fwd)
        return PHONE_OFFHOOK_FWD;
    if (rev)
        return PHONE_OFFHOOK_REV;
    return PHONE_ONHOOK;
}

void ct_co_hold(cointhing_channel * ch)
{
    ggpio_set(&(ch->co_oh_hold)); // Hold CO line
    delayms(ch->ct->relay_delay_ms);
}

void ct_co_unhold(cointhing_channel * ch)
{
    ggpio_clear(&(ch->co_oh_hold)); // Unhold CO line
    delayms(ch->ct->relay_delay_ms);
}

void ct_ch_hangup(cointhing_channel * ch)
{
    ggpio_clear(&(ch->co_oh_hold)); // Unhold CO line
    ggpio_set(&(ch->phone_co_test));
    delayms(1000);
    ct_ch_default(ch);
}
