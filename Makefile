CC ?= gcc
CFLAGS ?= -O2

EXE = rkafpack rkcrc rkdecrypt rkdump rkflash rkunpack

all: $(EXE)

rkflash: CFLAGS_EXTRA=-DHAS_LIBUSB -lusb

$(EXE):
	$(CC) $(CFLAGS) $(CFLAGS_EXTRA) $@.c -o $@

clean:
	rm -f $(EXE)
