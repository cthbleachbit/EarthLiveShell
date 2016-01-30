SCRIPTS		= earthlive-shell earthlive-daemon lib/io.lib.sh
SED			= /bin/sed
SHELL		= /bin/bash
PREFIX		= /usr/local
INSTALL		= /usr/bin/env install
CDN_PREFIX	= http://res.cloudinary.com/cth451/image/fetch/
DESTDIR		=
bindir		= $(PREFIX)/bin
libdir		= $(PREFIX)/lib/earthlive-shell
applicationdir	= $(PREFIX)/share/applications

all: $(SCRIPTS)

$(SCRIPTS): ${SCRIPTS:=.in}
	@echo '	GEN' $@
	@$(SED) -e 's|@cdn_prefix@|$(CDN_PREFIX)|g' \
	        -e 's|@libdir@|$(libdir)|g' \
	        $@.in > $@

install:  $(SCRIPTS)
	$(INSTALL) -d $(DESTDIR)$(bindir)
	$(INSTALL) -d $(DESTDIR)$(libdir)
	$(INSTALL) -d $(DESTDIR)$(applicationdir)
	$(INSTALL) -m755 earthlive-shell $(DESTDIR)$(bindir)
	$(INSTALL) -m755 earthlive-daemon $(DESTDIR)$(bindir)
	$(INSTALL) -m644 lib/io.lib.sh $(DESTDIR)$(libdir)
	$(INSTALL) -m644 conf/EarthLiveStart.desktop $(DESTDIR)$(applicationdir)
	$(INSTALL) -m644 conf/EarthLiveControl.desktop $(DESTDIR)$(applicationdir)

clean:
	rm -rf $(SCRIPTS)

uninstall:
	rm -f $(DESTDIR)$(bindir)/earthlive-shell
	rm -f $(DESTDIR)$(bindir)/earthlive-daemon
	rm -rf $(DESTDIR)$(libdir)
	rm -rf $(DESTDIR)$(applicationdir)/EarthLiveStart.desktop
	rm -rf $(DESTDIR)$(applicationdir)/EarthLiveControl.desktop

.PHONY: all install uninstall
