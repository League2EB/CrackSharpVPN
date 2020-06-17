export THEOS_DEVICE_IP =127.0.0.1
export THEOS_DEVICE_PORT=2222
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = CrackSharpVPN

CrackSharpVPN_FILES = Tweak.xm
CrackSharpVPN_CFLAGS = -std=c++11 -stdlib=libc++
CrackSharpVPN_LDFLAGS = -stdlib=libc++
CrackSharpVPN_ARCHS = arm64 arm64e armv7

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"