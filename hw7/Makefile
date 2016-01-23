EZCC ?= sdcc
EZAS ?= sdas8051
EZLD ?= sdld
PACKIHX ?= packihx
ARCH ?= mcs51

CC := $(EZCC)
AS := $(EZAS)
LD := $(EZLD)

TOP_DIR ?= ${CURDIR}/../../..
CORE_DIR ?= $(TOP_DIR)/core

CFLAGS := --model-small
CFLAGS += -m$(ARCH)
#CFLAGS += --std-c89
CFLAGS += --Werror
CFLAGS += -I.
#CFLAGS += --nostdlib

LDFLAGS := --iram-size 0x100
LDFLAGS += --code-size 0x1000
LDFLAGS += --code-loc 0x0000
LDFLAGS += --stack-loc 0x80
#LDFLAGS += --stack-after-data
LDFLAGS += --data-loc 0x30
LDFLAGS += --out-fmt-ihx
#LDFLAGS += -L /Applications/sdcc/share/sdcc/lib/small

C_SOURCES := hw7.c
ASM_SOURCES = hw7.asm

C_OBJECTS := $(patsubst %.c,%.rel,$(C_SOURCES))
C_ASM_OBJS := $(patsubst %.c,%.asm,$(C_SOURCES))

ASM_OBJECTS := $(patsubst %.s,%.rel,$(ASM_SOURCES))

all: hw7.hex

hw7.hex: $(C_OBJECTS) $(ASM_OBJECTS)
	$(CC) $(CFLAGS) $(LDFLAGS) $^
	$(PACKIHX) hw7.ihx > hw7.hex

clean:
	rm -f $(C_ASM_OBJS)
	rm -f *.hex *.ihx *.lnk *.lst *.map *.mem *.rel *.rst *.sym

%.rel : %.c
	$(CC) $(CFLAGS) -c $<

%.rel : %.s
	$(AS) -losg $<
