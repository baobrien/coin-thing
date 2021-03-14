OBJS = main.o usb_stuff.o notdumbi2c.o localsystick.o gpio_tca9534a.o cointhingus.o

OPENCM3_DIR := ./libopencm3

# Our output name
BINARY = main

LDSCRIPT = stm32f0.ld

# Using the stm32f0 series chip
LIBNAME     = opencm3_stm32f0
DEFS        += -DSTM32F0

# Target-specific flags
FP_FLAGS    ?= -msoft-float
ARCH_FLAGS   = -mthumb -mcpu=cortex-m0 $(FP_FLAGS)

STFLASH      = $(shell which st-flash)

# Compiler configuration
PREFIX      ?= arm-none-eabi
CC          := $(PREFIX)-gcc
LD          := $(PREFIX)-gcc
AR          := $(PREFIX)-ar
AS          := $(PREFIX)-as
SIZE        := $(PREFIX)-size
OBJCOPY     := $(PREFIX)-objcopy
OBJDUMP     := $(PREFIX)-objdump
GDB         := $(PREFIX)-gdb
OPT         := -Os
DEBUG       := -ggdb3
CSTD        ?= -std=c99

# C flags
TGT_CFLAGS  += $(OPT) $(CSTD) $(DEBUG)
TGT_CFLAGS  += $(ARCH_FLAGS)
TGT_CFLAGS  += -Wextra -Wshadow -Wimplicit-function-declaration
TGT_CFLAGS  += -Wredundant-decls -Wmissing-prototypes -Wstrict-prototypes
TGT_CFLAGS  += -fno-common -ffunction-sections -fdata-sections

# C preprocessor common flags
TGT_CFLAGS    += -MD
TGT_CFLAGS    += -Wall -Wundef
TGT_CFLAGS    += $(DEFS)

# Linker flags
TGT_LDFLAGS     += --static -nostartfiles
TGT_LDFLAGS     += -T$(LDSCRIPT)
TGT_LDFLAGS     += $(ARCH_FLAGS) $(DEBUG)
TGT_LDFLAGS     += -Wl,-Map=$(*).map -Wl,--cref
TGT_LDFLAGS     += -Wl,--gc-sections

# Used libraries
DEFS        += -I$(OPENCM3_DIR)/include
LDFLAGS     += -L$(OPENCM3_DIR)/lib
LDLIBS      += -l$(LIBNAME)
LDLIBS      += -Wl,--start-group -lc -lgcc -lnosys -Wl,--end-group

all: size

$(OPENCM3_DIR)/lib/lib$(LIBNAME).a:
ifeq (,$(wildcard $@))
	$(warning $(LIBNAME).a not found, attempting to rebuild in $(OPENCM3_DIR))
	$(MAKE) -C $(OPENCM3_DIR)
endif

size: $(BINARY).size
elf: $(BINARY).elf
bin: $(BINARY).bin
map: $(BINARY).map

GENERATED_BINARIES=$(BINARY).elf $(BINARY).bin $(BINARY).map

%.bin: %.elf
	$(OBJCOPY) -Obinary $(*).elf $(*).bin

%.elf %.map: $(OBJS) $(LDSCRIPT)
	$(LD) $(TGT_LDFLAGS) $(LDFLAGS) $(OBJS) $(LDLIBS) -o $(*).elf

%.o: %.c $(OPENCM3_DIR)/lib/lib$(LIBNAME).a
	$(CC) $(TGT_CFLAGS) $(CFLAGS)  -o $(*).o -c $(*).c

%.size: %.elf
	@$(SIZE) -d $(*).elf | tee $(*).size

flash: $(BINARY).bin
	@printf "  FLASH  $<\n"
	$(STFLASH) write $(BINARY).bin 0x8000000

reset:
	$(STFLASH)

clean:
	$(RM) $(GENERATED_BINARIES) generated.* $(OBJS) $(OBJS:%.o=%.d)

.PHONY: clean flash

