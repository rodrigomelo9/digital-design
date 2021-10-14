#!/usr/bin/make

BUILD=build

.PHONY: html clean

html: $(BUILD)/hdl.html

$(BUILD)/hdl.html: hdl.md
	reveal-md --theme moon --static $(BUILD) $<

clean:
	rm -fr $(BUILD)
