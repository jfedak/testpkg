PREFIX ?= /usr/local
DOCDIR ?= $(PREFIX)/share/testpkg/doc

all:
	@echo Run \'make install\' to install testpkg
	@echo Run \'make uninstall\' to uninstall testpkg

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@cp -p main.py $(DESTDIR)$(PREFIX)/bin/testpkg
	@mkdir -p $(DESTDIR)$(DOCDIR)
	@cp -p README.md $(DESTDIR)$(DOCDIR)
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/testpkg

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/testpkg
	@rm -rf $(DESTDIR)$(DOCDIR)