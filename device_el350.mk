LOCAL_PATH := device/dexp/el350

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

$(call inherit-product-if-exists, vendor/dexp/el350/el350-vendor.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

PRODUCT_NAME := Ixion_Volt
PRODUCT_DEVICE := el350
PRODUCT_BRAND := dexp
PRODUCT_MANUFACTURER := dexp
PRODUCT_MODEL := el350

# Charger
PRODUCT_PACKAGES += \
	charger \
	charger_res_images

# Rootdir files
ROOTDIR_FILES := \
	$(LOCAL_PATH)/ramdisk/init.rc \
	$(LOCAL_PATH)/ramdisk/init.board.rc \
	$(LOCAL_PATH)/ramdisk/init.recovery.board.rc \
	$(LOCAL_PATH)/ramdisk/init.sc8830.rc \
	$(LOCAL_PATH)/ramdisk/init.sc8830.usb.rc \
	$(LOCAL_PATH)/ramdisk/init.sc8830_ss.rc \
	$(LOCAL_PATH)/ramdisk/init.wifi.rc \
	$(LOCAL_PATH)/ramdisk/ueventd.sc8830.rc \
	$(LOCAL_PATH)/ramdisk/fstab.sc8830

PRODUCT_COPY_FILES += \
	$(foreach f,$(ROOTDIR_FILES),$(f):root/$(notdir $(f)))
