SRC ?= $(wildcard src/*.md)
PAGES ?= $(addprefix pages/, $(patsubst %.md,%.1,$(notdir $(SRC))))

all: $(PAGES)

pages/%.1: src/%.md
	pandoc -s -t man -o $@ $^
