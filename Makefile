TARGET := iphone:clang:latest:14.4
INSTALL_TARGET_PROCESSES = SpringBoard


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = FlowFixXinaA15

FlowFixXinaA15_FILES = $(shell find Sources/FlowFixXinaA15 -name '*.swift') $(shell find Sources/FlowFixXinaA15C -name '*.m' -o -name '*.c' -o -name '*.mm' -o -name '*.cpp')
FlowFixXinaA15_SWIFTFLAGS = -ISources/FlowFixXinaA15C/include
FlowFixXinaA15_CFLAGS = -fobjc-arc -ISources/FlowFixXinaA15C/include

include $(THEOS_MAKE_PATH)/tweak.mk
