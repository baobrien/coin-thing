
#ifndef __GPIO_TCA9534A_H
#define __GPIO_TCA9534A_H

#include <stdint.h>
#include <stdbool.h>


typedef struct _ggpio_pin ggpio_pin;

struct _ggpio_dev {
    void (*igpio_write)(ggpio_pin* pin, bool val);
    void (*igpio_set)(ggpio_pin* pin);
    void (*igpio_clear)(ggpio_pin* pin);
    void (*igpio_toggle)(ggpio_pin* pin);
    void (*igpio_direction)(ggpio_pin* pin, bool output);
    bool (*igpio_read)(ggpio_pin* pin);
    uint32_t busbase;
    uint32_t devindex1;
    uint32_t devindex2;
    uint32_t devstate[4];
    void* extra;
};

typedef struct _ggpio_dev ggpio_dev;

struct _ggpio_pin {
    uint32_t gpiopin1;
    uint32_t gpiopin2;
    ggpio_dev* dev;
    void* gpioextra;
};

#define GGPIO_DIR_OUTPUT true
#define GGPIO_DIR_INPUT false
#define GGPIO_TCA9534_INVERT true
#define GGPIO_TCA9534_NOINVERT false


void ggpio_write(ggpio_pin* pin, bool val);
void ggpio_set(ggpio_pin* pin);
void ggpio_clear(ggpio_pin* pin);
void ggpio_toggle(ggpio_pin* pin);
void ggpio_direction(ggpio_pin* pin, bool output);
bool ggpio_read(ggpio_pin* pin);

void ggpio_init_tca9534(ggpio_dev* dev,uint32_t i2cdev, uint8_t i2caddr);
void ggpio_get_pin_tca9534(ggpio_dev* dev, ggpio_pin* pin, uint32_t pinnum);
void ggpio_tca9534_set_invert(ggpio_pin* pin, bool invert);


#endif