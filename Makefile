SRC ?= $(wildcard src/*.md)
PAGES ?= $(addprefix pages/, $(patsubst %.md,%.tldr,$(notdir $(SRC))))
HTMLPAGES ?= $(addprefix html/, $(patsubst %.md,%.html,$(notdir $(SRC))))

all: $(PAGES)

html: $(HTMLPAGES)

clean: $(PAGES)
	rm -f $(PAGES)

CURRENT_DIR = $(shell pwd)
MAN_DIR ?= /usr/local/share/man
TLDR_DIR = $(MAN_DIR)/mant

install:
	@echo "Linking 'tldr' manpages"
# TODO: check it does not already exist
	mkdir -p $(TLDR_DIR)
	cp -n $(CURRENT_DIR)/pages/* $(TLDR_DIR)

pages/%.tldr: src/%.md
	pandoc -s -t man -o $@ $^

html/%.html: src/%.md | html/
	pandoc -s -o $@ $^

html/:
	mkdir -p $@
