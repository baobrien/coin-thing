#include <stdint.h>
#include <stdbool.h>

#include "gpio_tca9534a.h"
#include "notdumbi2c.h"

void ggpio_write(ggpio_pin * pin, bool val)
{
    pin->dev->igpio_write(pin, val);
}

void ggpio_set(ggpio_pin * pin)
{
    pin->dev->igpio_set(pin);
}

void ggpio_clear(ggpio_pin * pin)
{
    pin->dev->igpio_clear(pin);
}

void ggpio_toggle(ggpio_pin * pin)
{
    pin->dev->igpio_toggle(pin);
}

void ggpio_direction(ggpio_pin * pin, bool output)
{
    pin->dev->igpio_direction(pin, output);
}

bool ggpio_read(ggpio_pin * pin)
{
    return pin->dev->igpio_read(pin);
}

#define TCA9534_REG_IN 0
#define TCA9534_REG_OUT 1
#define TCA9534_REG_POL 2
#define TCA9534_REG_DIR 3

static inline uint8_t tca9534_read_reg(ggpio_dev * dev, uint8_t regno)
{
    uint8_t addr = (uint8_t) dev->devindex1;
    uint32_t i2cdev = dev->busbase;
    uint8_t cmdbuf = regno;
    uint8_t cmdreadback;

    i2c_transfer7_nodumb(i2cdev, addr, &cmdbuf, 1, &cmdreadback, 1);

    return cmdreadback;
}

static inline void tca9534_write_reg(ggpio_dev * dev, uint8_t regno, uint8_t val)
{
    uint8_t addr = (uint8_t) dev->devindex1;
    uint32_t i2cdev = dev->busbase;
    uint8_t cmdbuf[2];
    cmdbuf[0] = regno;
    cmdbuf[1] = val;

    i2c_transfer7_nodumb(i2cdev, addr, cmdbuf, 2, NULL, 0);
}

static void ggpio_tca9534_set(ggpio_pin * pin)
{
    uint8_t setreg = (uint8_t) pin->dev->devstate[TCA9534_REG_OUT];
    uint8_t pinno = (uint8_t) pin->gpiopin1;
    setreg = setreg | pinno;
    tca9534_write_reg(pin->dev, TCA9534_REG_OUT, setreg);
    pin->dev->devstate[TCA9534_REG_OUT] = setreg;
}

static void ggpio_tca9534_clear(ggpio_pin * pin)
{
    uint8_t setreg = (uint8_t) pin->dev->devstate[TCA9534_REG_OUT];
    uint8_t pinno = (uint8_t) pin->gpiopin1;
    setreg = setreg & (~pinno);
    tca9534_write_reg(pin->dev, TCA9534_REG_OUT, setreg);
    pin->dev->devstate[TCA9534_REG_OUT] = setreg;
}

static void ggpio_tca9534_write(ggpio_pin * pin, bool val)
{
    if (val) {
        ggpio_tca9534_set(pin);
    } else {
        ggpio_tca9534_clear(pin);
    }
}

static void ggpio_tca9534_toggle(ggpio_pin * pin)
{
    uint8_t setreg = (uint8_t) pin->dev->devstate[TCA9534_REG_OUT];
    uint8_t pinno = (uint8_t) pin->gpiopin1;
    setreg = setreg ^ pinno;
    tca9534_write_reg(pin->dev, TCA9534_REG_OUT, setreg);
    pin->dev->devstate[TCA9534_REG_OUT] = setreg;
}

static void ggpio_tca9534_direction(ggpio_pin * pin, bool output)
{
    uint8_t dirreg = (uint8_t) pin->dev->devstate[TCA9534_REG_DIR];
    uint8_t pinno = (uint8_t) pin->gpiopin1;
    if (output) {
        dirreg = dirreg & (~pinno);
    } else {
        dirreg = dirreg | pinno;
    }
    tca9534_write_reg(pin->dev, TCA9534_REG_DIR, dirreg);
    pin->dev->devstate[TCA9534_REG_DIR] = dirreg;
}

static bool ggpio_tca9534_read(ggpio_pin * pin)
{
    uint8_t pinin = tca9534_read_reg(pin->dev, TCA9534_REG_IN);
    if (pinin & ((uint8_t) pin->gpiopin1)) {
        return true;
    }
    return false;
}

void ggpio_init_tca9534(ggpio_dev * dev, uint32_t i2cdev, uint8_t i2caddr)
{
    dev->busbase = i2cdev;
    dev->devindex1 = (uint8_t) i2caddr;
    dev->igpio_write = ggpio_tca9534_write;
    dev->igpio_clear = ggpio_tca9534_clear;
    dev->igpio_set = ggpio_tca9534_set;
    dev->igpio_toggle = ggpio_tca9534_toggle;
    dev->igpio_direction = ggpio_tca9534_direction;
    dev->igpio_read = ggpio_tca9534_read;
    dev->devstate[TCA9534_REG_OUT] = 0xFF;
    tca9534_write_reg(dev, TCA9534_REG_OUT, 0xFF);
    dev->devstate[TCA9534_REG_POL] = 0;
    tca9534_write_reg(dev, TCA9534_REG_POL, 0);
    dev->devstate[TCA9534_REG_DIR] = 0xFF;
    tca9534_write_reg(dev, TCA9534_REG_DIR, 0xFF);
}

void ggpio_get_pin_tca9534(ggpio_dev * dev, ggpio_pin * pin, uint32_t pinnum)
{
    pin->dev = dev;
    pin->gpiopin1 = pinnum;
}

void ggpio_tca9534_set_invert(ggpio_pin * pin, bool invert)
{
    uint8_t polreg = (uint8_t) pin->dev->devstate[TCA9534_REG_POL];
    uint8_t pinno = (uint8_t) pin->gpiopin1;
    if (invert) {
        polreg = polreg | pinno;
    } else {
        polreg = polreg & (~pinno);
    }
    tca9534_write_reg(pin->dev, TCA9534_REG_POL, polreg);
    pin->dev->devstate[TCA9534_REG_POL] = polreg;
}
