TEMPLATE = app
CONFIG += console #debug
QT += widgets core gui

# CONFIG += windeployqt # Seems does not seem to work :(
# Invoke windeployqt in the target directory instead

HEADERS       = 
SOURCES       = hello.cpp

QMAKE_PROJECT_NAME = hello
