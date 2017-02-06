# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from the proprietary version
-include vendor/samsung/grandprimeve3g/BoardConfigVendor.mk

# Platform
TARGET_ARCH := arm
TARGET_BOARD_PLATFORM := sc8830
TARGET_BOARD_PLATFORM_GPU := mali-400
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := SC7731
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a7 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a7 -mfpu=neon -mfloat-abi=softfp
BOARD_VENDOR := samsung

# Config u-boot
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_NO_RECOVERY := 

BOARD_USES_GENERIC_AUDIO := true
USE_CAMERA_STUB := true

DISABLE_DEXPREOPT := true
BOARD_USE_LEGACY_TOUCHSCREEN := true

TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun/file"

TARGET_RECOVERY_INITRC := device/samsung/grandprimeve3g/etc/init.rc
TARGET_RECOVERY_FSTAB := device/samsung/grandprimeve3g/ramdisk/fstab.sc8830
