PREFIX ?= /usr/local
DOCDIR ?= $(PREFIX)/share/testkuba/doc

all:
	@echo Run \'make install\' to install testkuba
	@echo Run \'make uninstall\' to uninstall testkuba

install:
	@mkdir -p $(PREFIX)/bin
	@cp -p main.py $(PREFIX)/bin/testkuba
	@mkdir -p $(DOCDIR)
	@cp -p README.md $(DOCDIR)
	@chmod 755 $(PREFIX)/bin/testkuba

uninstall:
	@rm -rf $(PREFIX)/bin/testkuba
	@rm -rf $(DOCDIR)