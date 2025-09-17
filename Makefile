CC=gcc
CFLAGS=-I. -I/usr/include -I/usr/include/opencv4 -lssl -lcrypto -lstdc++

OPENCV_DEPS = `pkg-config --libs opencv4`

.PHONY = scrambler

# Use the PREFIX arg for install path if set, otherwise default to /usr/bin.
ifeq ($(PREFIX),)
	PREFIX := /usr/bin
endif

scrambler: main.cpp
	$(CC) -g main.cpp $(CFLAGS) $(OPENCV_DEPS) -o scrambler
	chmod +x ./scrambler

install: scrambler
	install -d $(PREFIX)/
	install -m 655 scrambler $(PREFIX)/

clean:
	rm -rf ./scrambler