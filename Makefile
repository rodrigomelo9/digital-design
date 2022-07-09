#!/usr/bin/make

BUILD=build

.PHONY: html clean

html: $(BUILD)/hdl.html $(BUILD)/amba.html

$(BUILD)/%.html: %.md
	reveal-md --theme moon --static $(BUILD) $<

clean:
	rm -fr $(BUILD)
