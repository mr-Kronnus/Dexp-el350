LOCAL_PATH := device/samsung/grandprimeve3g

PRODUCT_AAPT_CONFIG :=ldpi mdpi hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG :=xhdpi

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/zImage:kernel

PRODUCT_PACKAGES += \
com.android.future.usb.accessory \
libnetcmdiface \
Stk \
static_busybox \
make_ext4fs \
setup_fs

# Permissions
PERMISSION_XML_FILES := \
	$(LOCAL_PATH)/permissions/platform.xml \
	frameworks/native/data/etc/handheld_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.camera.xml \
	frameworks/native/data/etc/android.hardware.bluetooth_le.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.software.sip.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml

PRODUCT_COPY_FILES += \
$(foreach f,$(PERMISSION_XML_FILES),$(f):system/etc/permissions/$(notdir $(f)))

$(call inherit-product-if-exists, vendor/samsung/grandprimeve3g/el350Volt-vendor.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

PRODUCT_NAME := el350Volt
PRODUCT_DEVICE := grandprimeve3g
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-G531H
