all: clean stable

clean:
	rm -rf *.deb
	rm -rf librenms/opt/librenms
	
stable: clean
	git clone https://github.com/librenms/librenms.git code
	mv code librenms/opt/librenms
	dpkg-deb --build librenms
    
