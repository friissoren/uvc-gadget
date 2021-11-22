CROSS_COMPILE	?= 

CC		:= $(CROSS_COMPILE)gcc
CFLAGS		:= -W -Wall -g
LDFLAGS		:= -g

all: uvc-gadget

uvc-gadget: uvc-gadget.o
	$(CC) $(LDFLAGS) -o $@ $^

clean:
	rm -f *.o
	rm -f uvc-gadget
	
install: uvc-gadget
    install -m 644 uvc-gadget /usr/bin
