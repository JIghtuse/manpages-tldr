SRC ?= $(wildcard src/*.md)
PAGES ?= $(addprefix pages/, $(patsubst %.md,%.1,$(notdir $(SRC))))

all: $(PAGES)

clean: $(PAGES)
	rm -f $(PAGES)

pages/%.1: src/%.md
	pandoc -s -t man -o $@ $^
