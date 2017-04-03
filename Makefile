spinswift:
	cd src; swift build -Xlinker -L/opt/local/lib

clean:
	cd src; rm -fr .build Packages
