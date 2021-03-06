PREFIX=${CURDIR}/debian/openapp-wordpress-installer
PREFIX2=${CURDIR}/debian/openapp-wordpress

install:
# bin
	mkdir -p $(PREFIX)/usr/bin
	cp openapp-wordpress-passwd $(PREFIX)/usr/bin
	cp openapp-wordpress-siteurl $(PREFIX)/usr/bin

#man
	mkdir -p $(PREFIX)/usr/share/man/man1
	cp debian/openapp-wordpress-passwd.1 $(PREFIX)/usr/share/man/man1
	cp debian/openapp-wordpress-siteurl.1 $(PREFIX)/usr/share/man/man1

#openapp-backupmodule
	mkdir -p $(PREFIX2)/usr/lib/openapp-backup/modules/
	cp openapp-backup/wordpress $(PREFIX2)/usr/lib/openapp-backup/modules/
	chmod +x $(PREFIX2)/usr/lib/openapp-backup/modules/*

uninstall:
# bin
	rm -rf $(PREFIX)/usr/bin/openapp-wordpress-passwd
	rm -rf $(PREFIX)/usr/share/man/man1/openapp-wordpress-passwd.1.gz
	rm -rf $(PREFIX)/usr/bin/openapp-wordpress-siteurl
	rm -rf $(PREFIX)/usr/share/man/man1/openapp-wordpress-siteurl.1.gz
	rm -rf $(PREFIX2)/etc/openapp-backup/scripts.d/wordpress

clean:
	-echo "NOP"

