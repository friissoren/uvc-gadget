
CFLAGS		:= -W -Wall -g
LDFLAGS		:= -g

ifeq ($(DESTDIR),)
	DESTDIR := /usr/bin
endif

all: uvc-gadget

uvc-gadget: uvc-gadget.o
	$(CC) $(LDFLAGS) -o $@ $^

clean:
	rm -f *.o
	rm -f uvc-gadget
	
install: uvc-gadget 
	install -d ${DESTDIR}
	install -m 755 uvc-gadget ${DESTDIR}
	install -m 755 multi-gadget.sh ${DESTDIR}

