# Top-level, platform-independant Makefile

include ../config # All platform-dependent defns are here

APPNAME=hello
MAKEFILE=Makefile.$(PLATFORM)

DIST_DIR=../dist

all: build

qmake: $(APPNAME).pro
	$(QMAKE) -o $(MAKEFILE) $(APPNAME).pro

build: $(MAKEFILE)
	make -f $(MAKEFILE)

run:
ifeq ($(PLATFORM_TYPE), windows)
	./release/$(APPNAME).exe
endif
ifeq ($(PLATFORM_TYPE), macos)
	open ./$(APPNAME).app
endif

deploy:
ifeq ($(PLATFORM_TYPE), windows)
	(cd release; $(WINDEPLOYQT) $(APPNAME).exe)
	cp $(EXTDLLS)/*.dll ./release
endif
ifeq ($(PLATFORM_TYPE), macos)
	rm -rf $(DIST_DIR)/macos/$(APPNAME).app
	cp -r $(APPNAME).app $(DIST_DIR)/macos
endif

clean:
	make -f $(MAKEFILE) clean

clobber: 
	rm -f $(MAKEFILE)
	rm -rf $(MAKEFILE).{debug,release}
	rm -rf {debug,release}
	rm -rf $(APPNAME).app
	rm -f $(APPNAME).pro.user
	rm -f .qmake.stash
	rm -f *.o
	rm -f *~
