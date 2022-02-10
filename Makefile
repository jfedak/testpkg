PREFIX ?= /usr/local
DOCDIR ?= $(PREFIX)/share/testkuba/doc

all:
	@echo Run \'make install\' to install testkuba
	@echo Run \'make uninstall\' to uninstall testkuba

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@cp -p main.py $(DESTDIR)$(PREFIX)/bin/testkuba
	@mkdir -p $(DESTDIR)$(DOCDIR)
	@cp -p README.md $(DESTDIR)$(DOCDIR)
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/testkuba

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/testkuba
	@rm -rf $(DESTDIR)$(DOCDIR)