SRC ?= $(wildcard src/*.md)
PAGES ?= $(addprefix pages/, $(patsubst %.md,%.tldr,$(notdir $(SRC))))
HTMLPAGES ?= $(addprefix html/, $(patsubst %.md,%.html,$(notdir $(SRC))))

all: $(PAGES)

html: $(HTMLPAGES)

clean: $(PAGES)
	rm -f $(PAGES)

CURRENT_DIR = $(shell pwd)

install:
	@echo "Linking 'tldr' manpages"
# TODO: check it does not already exist
	ln -s $(CURRENT_DIR)/pages/ $(MAN_DIR)/mant

pages/%.tldr: src/%.md
	pandoc -s -t man -o $@ $^

html/%.html: src/%.md
	pandoc -s -o $@ $^
