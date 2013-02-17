PROGRAM=kiosk-browser
OBJECTS=kiosk-browser.o

CC=gcc
CFLAGS=$(shell pkg-config --cflags gtk+-2.0 webkit-1.0)
CFLAGS+= -Wall -g

LDFLAGS=$(shell pkg-config --libs gtk+-2.0 webkit-1.0)

all: $(PROGRAM)

kiosk-browser: $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $(PROGRAM)

clean:
	rm -rf $(OBJECTS) $(PROGRAM)

%.o : %.c
	$(CC) $(CFLAGS) -c $<
