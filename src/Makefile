SCRIPTS		= earthlive-shell earthlive-daemon
SED		= /bin/sed
SHELL		= /bin/bash
PREFIX		= /usr/local
INSTALL		= /usr/bin/env install
CDN_PREFIX	= http://res.cloudinary.com/cth451/image/fetch/
DESTDIR		=
bindir		= $(PREFIX)/bin
applicationdir	= $(PREFIX)/share/applications

all: $(SCRIPTS)

$(SCRIPTS): ${SCRIPTS:=.in}
	@echo '	GEN' $@
	@$(SED) -e 's|@cdn_prefix@|$(CDN_PREFIX)|g' \
	        $@.in > $@

install:  $(SCRIPTS)
	$(INSTALL) -d $(DESTDIR)$(bindir)
	$(INSTALL) -d $(DESTDIR)$(applicationdir)
	$(INSTALL) -m755 earthlive-shell $(DESTDIR)$(bindir)
	$(INSTALL) -m755 earthlive-daemon $(DESTDIR)$(bindir)
	$(INSTALL) -m755 conf/EarthLiveStart.desktop $(DESTDIR)$(applicationdir)
	$(INSTALL) -m755 conf/EarthLiveControl.desktop $(DESTDIR)$(applicationdir)

clean:
	rm -rf $(SCRIPTS)

uninstall:
	rm -rf $(DESTDIR)$(bindir)/earthlive-shell
	rm -rf $(DESTDIR)$(bindir)/earthlive-daemon
	rm -rf $(DESTDIR)$(applicationdir)/EarthLiveStart.desktop
	rm -rf $(DESTDIR)$(applicationdir)/EarthLiveControl.desktop

.PHONY: all install uninstall
