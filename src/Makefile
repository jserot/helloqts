# Top-level, platform-independant Makefile

include ../config # All platform-dependent defns are here

APPNAME=hello
CONFIG += console #debug
MAKEFILE=Makefile.$(PLATFORM)

DIST_DIR=../dist

EXT_DLLS=\
	/ucrt64/bin/libb2-1.dll \
	/ucrt64/bin/libbrotlicommon.dll \
	/ucrt64/bin/libbrotlidec.dll \
	/ucrt64/bin/libbz2-1.dll \
	/ucrt64/bin/libdouble-conversion.dll \
	/ucrt64/bin/libfreetype-6.dll \
	/ucrt64/bin/libgcc_s_seh-1.dll \
	/ucrt64/bin/libglib-2.0-0.dll \
	/ucrt64/bin/libgraphite2.dll \
	/ucrt64/bin/libharfbuzz-0.dll \
	/ucrt64/bin/libiconv-2.dll \
	/ucrt64/bin/libicudt74.dll \
	/ucrt64/bin/libicuin74.dll \
	/ucrt64/bin/libicuuc74.dll \
	/ucrt64/bin/libintl-8.dll \
	/ucrt64/bin/libmd4c.dll \
	/ucrt64/bin/libpcre2-16-0.dll \
	/ucrt64/bin/libpcre2-8-0.dll \
	/ucrt64/bin/libpng16-16.dll \
	/ucrt64/bin/libstdc++-6.dll \
	/ucrt64/bin/libwinpthread-1.dll \
	/ucrt64/bin/libzstd.dll \
	/ucrt64/bin/zlib1.dll

all: qmake build run dist

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

dist:
ifeq ($(PLATFORM_TYPE), windows)
	cp release/$(APPNAME).exe $(DIST_DIR)/windows
	(cd $(DIST_DIR)/windows; $(WINDEPLOYQT) $(APPNAME).exe)
	cp $(EXT_DLLS) $(DIST_DIR)/windows
endif
ifeq ($(PLATFORM_TYPE), macos)
	rm -rf $(DIST_DIR)/macos/$(APPNAME).app
	rm -f $(DIST_DIR)/macos/*.dmg
	cp -r $(APPNAME).app $(DIST_DIR)/macos
endif

clean:
	make -f $(MAKEFILE) clean
	rm -f moc_*.*	

clobber: 
	rm -f moc_*.*	
	rm -f $(MAKEFILE)
	rm -rf $(MAKEFILE).{debug,release}
	rm -rf {debug,release}
	rm -rf $(APPNAME).app
	rm -f $(APPNAME).pro.user
	rm -f .qmake.stash
	rm -f *.o
	rm -f *~
