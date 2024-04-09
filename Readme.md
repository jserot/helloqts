This is a prototype repository for building multi-platform Qt applications.

This has been currently been tested on
- Qt5 on MacOS 10.12 running on an Intel (x86) Mac (platform name: `qt5-macx86`)
- Qt6 on Windows10 running MSYS2/ucrt64 development env (platform name: `qt6-ucrt64`)
- Qt6 on MacOS 12.6 running on an M1 Mac (platform name: `qt6-macm1`)

### To build on a new platform

1. `make clobber`
2. `./configure -appname hello -platform <platform>`
3. `cd src`
4. `make qmake`
5. `make`
6. `make run`
6. `make dist`  (this prepare the build of the OS-specific installer in `../dist/<platform>`)

### To build the platform-specific installer

- `cd dist/<platform>`
- `make`
