TEMPLATE = app
CONFIG -= qt
CONFIG += c++14

# FOR CLANG
#QMAKE_CXXFLAGS += -stdlib=libc++
#QMAKE_LFLAGS += -stdlib=libc++

# universal arguments
QMAKE_CXXFLAGS += -std=c++14
QMAKE_CXXFLAGS += -pipe -Os -fno-exceptions -fno-rtti -fno-threadsafe-statics
#QMAKE_CXXFLAGS += -pipe -Os
#QMAKE_CXXFLAGS += -fno-exceptions
#QMAKE_CXXFLAGS += -fno-rtti
#QMAKE_CXXFLAGS += -fno-threadsafe-statics
DEFINES += INTERRUPTED_WRAPPER

#LIBS += -lpthread
experimental {
#QMAKE_CXXFLAGS += -stdlib=libc++
QMAKE_CXXFLAGS += -nostdinc
INCLUDEPATH += /usr/include/x86_64-linux-musl
INCLUDEPATH += /usr/include/c++/v1
INCLUDEPATH += /usr/include
INCLUDEPATH += /usr/include/x86_64-linux-gnu
QMAKE_LFLAGS += -L/usr/lib/x86_64-linux-musl -dynamic-linker /lib/ld-musl-x86_64.so.1
LIBS += -lc++
}

PDTK = ../pdtk
INCLUDEPATH += $$PDTK

SOURCES = main.cpp \
    executorcore.cpp \
    executorconfigclient.cpp \
    configclient.cpp \
    jobcontroller.cpp \
    $$PDTK/application.cpp \
    $$PDTK/process.cpp \
    $$PDTK/socket.cpp \
    $$PDTK/asyncfd.cpp \
    $$PDTK/cxxutils/configmanip.cpp \
    $$PDTK/specialized/peercred.cpp \
    $$PDTK/specialized/procstat.cpp \
    $$PDTK/specialized/proclist.cpp \
    $$PDTK/specialized/eventbackend.cpp \
    $$PDTK/specialized/FileEvent.cpp \
    $$PDTK/specialized/PollEvent.cpp \
    $$PDTK/specialized/ProcessEvent.cpp

HEADERS +=  \
    executorcore.h \
    executorconfigclient.h \
    configclient.h \
    jobcontroller.h \
    $$PDTK/object.h \
    $$PDTK/application.h \
    $$PDTK/process.h \
    $$PDTK/socket.h \
    $$PDTK/asyncfd.h \
    $$PDTK/cxxutils/vfifo.h \
    $$PDTK/cxxutils/posix_helpers.h \
    $$PDTK/cxxutils/socket_helpers.h \
    $$PDTK/cxxutils/error_helpers.h \
    $$PDTK/cxxutils/hashing.h \
    $$PDTK/cxxutils/colors.h \
    $$PDTK/cxxutils/configmanip.h \
    $$PDTK/cxxutils/misc_helpers.h \
    $$PDTK/cxxutils/pipedfork.h \
    $$PDTK/cxxutils/signal_helpers.h \
    $$PDTK/specialized/peercred.h \
    $$PDTK/specialized/procstat.h \
    $$PDTK/specialized/proclist.h \
    $$PDTK/specialized/capabilities.h \
    $$PDTK/specialized/eventbackend.h \
    $$PDTK/specialized/FileEvent.h \
    $$PDTK/specialized/PollEvent.h \
    $$PDTK/specialized/ProcessEvent.h
