QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    main.cpp \
    mainwindow.cpp

HEADERS += \
    mainwindow.h

FORMS += \
    mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/lib/ -lavcodec
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/lib/ -lavcodecd

INCLUDEPATH += $$PWD/include
DEPENDPATH += $$PWD/include

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/lib/ -lavdevice
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/lib/ -lavdeviced

INCLUDEPATH += $$PWD/include
DEPENDPATH += $$PWD/include

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/lib/ -lavfilter
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/lib/ -lavfilterd

INCLUDEPATH += $$PWD/include
DEPENDPATH += $$PWD/include

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/lib/ -lavformat
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/lib/ -lavformatd

INCLUDEPATH += $$PWD/include
DEPENDPATH += $$PWD/include

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/lib/ -lavutil
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/lib/ -lavutild

INCLUDEPATH += $$PWD/include
DEPENDPATH += $$PWD/include

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/lib/ -lpostproc
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/lib/ -lpostprocd

INCLUDEPATH += $$PWD/include
DEPENDPATH += $$PWD/include

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/lib/ -lswscale
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/lib/ -lswscaled

INCLUDEPATH += $$PWD/include
DEPENDPATH += $$PWD/include
