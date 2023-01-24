#!/usr/bin/make

ODIR=_build
OPTS=--theme moon --static $(ODIR)

vpath %.html $(ODIR)

%.html: %.md index.md
	reveal-md $(OPTS) $<
	reveal-md $(OPTS) index.md

html: amba.html hdl.html serial.html

clean:
	rm -fr $(ODIR)
