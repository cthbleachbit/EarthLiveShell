SCRIPTS		= earthlive-shell earthlive-daemon lib/io.lib.sh lib/integration.lib.sh
SED			= /bin/sed
SHELL		= /bin/bash
PREFIX		= /usr/local
INSTALL		= /usr/bin/env install
MSGFMT		= /usr/bin/msgfmt
CDN_PREFIX	= 
bindir		= $(PREFIX)/bin
localedir	= $(PREFIX)/share/locale
libdir		= $(PREFIX)/lib/earthlive-shell
applicationdir	= $(PREFIX)/share/applications

all: $(SCRIPTS)

$(SCRIPTS): ${SCRIPTS:=.in}
	@echo '	GEN' $@
	@$(SED) -e 's|@cdn_prefix@|$(CDN_PREFIX)|g' \
	        -e 's|@libdir@|$(libdir)|g' \
	        -e 's|@localedir@|$(localedir)|g' \
	        -e "s|@ver@|`git rev-list --count HEAD`.`git rev-parse --short HEAD`|g" \
	        $@.in > $@

install:  $(SCRIPTS)
	$(INSTALL) -d $(DESTDIR)$(bindir)
	$(INSTALL) -d $(DESTDIR)$(libdir)
	$(INSTALL) -d $(DESTDIR)$(applicationdir)
	$(INSTALL) -m755 earthlive-shell $(DESTDIR)$(bindir)
	$(INSTALL) -m755 earthlive-daemon $(DESTDIR)$(bindir)
	$(INSTALL) -m644 lib/io.lib.sh $(DESTDIR)$(libdir)
	$(INSTALL) -m644 lib/integration.lib.sh $(DESTDIR)$(libdir)
	$(INSTALL) -m644 conf/EarthLiveStart.desktop $(DESTDIR)$(applicationdir)
	$(INSTALL) -m644 conf/EarthLiveControl.desktop $(DESTDIR)$(applicationdir)
	test -x $(MSGFMT) && for file in po/*/*.po; \
	do \
	  package=$$(echo $$file | $(SED) -e 's#po/\([^/]\+\).*#\1#'); \
	  lang=$$(echo $$file | $(SED) -e 's#.*/\([^/]\+\).po#\1#'); \
	  $(INSTALL) -d $(DESTDIR)$(localedir)/$$lang/LC_MESSAGES; \
	  $(MSGFMT) -o $(DESTDIR)$(localedir)/$$lang/LC_MESSAGES/$$package.mo $$file; \
	done

clean:
	rm -rf $(SCRIPTS)

uninstall:
	rm -f $(DESTDIR)$(bindir)/earthlive-shell
	rm -f $(DESTDIR)$(bindir)/earthlive-daemon
	rm -rf $(DESTDIR)$(libdir)
	rm -rf $(DESTDIR)$(applicationdir)/EarthLiveStart.desktop
	rm -rf $(DESTDIR)$(applicationdir)/EarthLiveControl.desktop

.PHONY: all install uninstall
