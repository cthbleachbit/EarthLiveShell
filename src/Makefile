SHELL		= /bin/bash
PREFIX		= /usr/local
INSTALL		= /usr/bin/env install
DESTDIR		=
bindir		= $(PREFIX)/bin
applicationdir	= $(PREFIX)/share/applications

install: 
	$(INSTALL) -d $(DESTDIR)$(bindir)
	$(INSTALL) -d $(DESTDIR)$(applicationdir)
	$(INSTALL) -m755 earthlive-shell $(DESTDIR)$(bindir)
	$(INSTALL) -m755 earthlive-daemon $(DESTDIR)$(bindir)

uninstall:
	rm -rf $(DESTDIR)$(bindir)/earthlive-shell
	rm -rf $(DESTDIR)$(bindir)/earthlive-daemon

.PHONY: install uninstall
