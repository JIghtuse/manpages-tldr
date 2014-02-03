SRC ?= $(wildcard src/*.md)
PAGES ?= $(addprefix pages/, $(patsubst %.md,%.tldr,$(notdir $(SRC))))
HTMLPAGES ?= $(addprefix html/, $(patsubst %.md,%.html,$(notdir $(SRC))))

all: $(PAGES)

html: $(HTMLPAGES)

clean: $(PAGES)
	rm -f $(PAGES)

MAN_CONF = /etc/man.conf
MAN_DIR = /usr/share/man
CURRENT_DIR = $(shell pwd)

install:
	@echo "Installing 'tldr' Man section"
	cp -n $(MAN_CONF) $(MAN_CONF).bak
# TODO: check it does not already exist
	sed '/^MANSECT/ s/$$/:tldr:t/' $(MAN_CONF).bak > $(MAN_CONF)

	@echo "Linking 'tldr' manpages"
# TODO: check it does not already exist
	ln -s $(CURRENT_DIR)/pages/ $(MAN_DIR)/mant

pages/%.tldr: src/%.md
	pandoc -s -t man -o $@ $^

html/%.html: src/%.md
	pandoc -s -o $@ $^
