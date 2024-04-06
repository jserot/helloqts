# Top-level, platform-independant Makefile

include ./config # All platform-dependent defns are here

MAKEFILE=Makefile.$(PLATFORM)

clean:
	(cd src; make -f $(MAKEFILE) clean)

clobber: 
	(cd src; make clobber)
	rm -f *~
	rm -rf ./dist/macos/*.app
	rm -rf ./dist/macos/*.dmg
	rm -rf ./dist/windows/*_setup.exe # InnoSetup binary installer(s)
