CC ?= gcc
CFLAGS ?= -O2

EXE = rkafpack rkcrc rkdecrypt rkdump rkflash rkunpack

all: $(EXE)

$(EXE):
	$(CC) $(CFLAGS) $@.c -o $@

clean:
	rm -f $(EXE)
