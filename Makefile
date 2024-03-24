CFLAGS= -Og -g -Wall -Wextra -Wmissing-prototypes -Wstrict-prototypes

LIB= \
	 ax25_dl.o \
	 ax25.o \
	 buffer.o \
	 connection.o \
	 kiss.o \
	 metric.o \
	 packet.o \
	 ssid.o \
	 time.o \

PLATFORM?=platform-posix.o

all: serial-tcpip serial-tty

serial-tcpip: serial-tcpip.o libax25embed.a($(LIB)) $(PLATFORM)
serial-tty: serial-tty.o libax25embed.a($(LIB)) $(PLATFORM)

clean:
	rm -f *.o *.a serial-tcpip serial-tty
