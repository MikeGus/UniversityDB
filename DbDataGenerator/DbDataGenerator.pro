TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += main.cpp \
    driver_generator.cpp \
    basic_generator.cpp \
    passenger_generator.cpp \
    auto_generator.cpp \
    route_generator.cpp

HEADERS += \
    passenger_generator.h \
    driver_generator.h \
    utils.h \
    basic_generator.h \
    auto_generator.h \
    route_generator.h

