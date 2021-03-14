#ifndef __COINTHINGUS_H
#define __COINTHINGUS_H

#include <stdint.h>
#include <stdlib.h>

#include "gpio_tca9534a.h"

#define PHONE_ONHOOK 0
#define PHONE_OFFHOOK_FWD 1
#define PHONE_OFFHOOK_REV 2

typedef struct _cointhing cointhing;
typedef struct _cointhing_channel cointhing_channel;

struct _cointhing_channel {
    ggpio_pin co_oh_hold; // Relay to hold CO off hook
    ggpio_pin phone_co_test; // Relay to select between coin control and phone->line
    ggpio_pin offhook_fwd; // Opto to check for off-hook in forward polarity
    ggpio_pin offhook_rev; // Opto to check for off-hook in reverse polarity
    size_t ch_index;
    cointhing* ct;
};

struct _cointhing {
    ggpio_pin enable_hv; // HV supply enable/disable
    ggpio_pin coin_tc_polarity; // Relay to select +/- coin test/collect polarity
    ggpio_pin coin_tc_voltage; // Relay to select between high and low voltage
    ggpio_pin coin_test_read; // Input from coin_test opto
    size_t n_channels;  // How many channels for this cointhing
    cointhing_channel channels[8]; // Pointer to list of coin thing channels
    
    uint32_t relay_delay_ms; // How long to wait for relays to switch
    uint32_t hvsupply_powerup; // How long to wait for the HV supply to power up
    uint32_t coin_test_time; // How long to do the coin test
    uint32_t coin_rc_time; // How long to return/collect
};

void ct_hvpsu_enable(cointhing* ct);
void ct_hvpsu_disable(cointhing* ct);

bool ct_test_present(cointhing_channel* ch);
bool ct_test_minrate(cointhing_channel* ch);
void ct_collect(cointhing_channel* ch);
void ct_return(cointhing_channel* ch);

int ct_offhook(cointhing_channel* ch);
void ct_co_hold(cointhing_channel* ch);
void ct_co_unhold(cointhing_channel* ch);
void ct_ch_hangup(cointhing_channel* ch);

// Initalize the coin thingus for the v1 PCB
void ct_init_cointhingusv1(cointhing* ct, ggpio_dev* tca9534);

#endif