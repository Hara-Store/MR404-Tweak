ARCHS = arm64 arm64e
TARGET = iphone:clang:latest:14.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = MR404
MR404_FILES = Tweak.xm
MR404_CFLAGS = -fobjc-arc
MR404_CFLAGS += -Wno-deprecated-declarations

include $(THEOS_MAKE_PATH)/tweak.mk
