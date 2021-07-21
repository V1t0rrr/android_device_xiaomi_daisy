#
# Copyright (C) 2017-2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/xiaomi/daisy

# ANT
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

BUILD_BROKEN_DUP_RULES := true

TARGET_BOARD_SUFFIX := _64
TARGET_SUPPORTS_64_BIT_APPS := true

# APEX
DEXPREOPT_GENERATE_APEX_IMAGE := true

# Audio
AUDIO_FEATURE_ENABLED_EXTENDED_COMPRESS_FORMAT := true
AUDIO_FEATURE_ENABLED_EXT_AMPLIFIER := false
AUDIO_FEATURE_ENABLED_EXT_HDMI := false

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth
TARGET_FWK_SUPPORTS_FULL_VALUEADDS := true
TARGET_USE_QTI_BT_STACK := true

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8953
TARGET_NO_BOOTLOADER := true

# Build
BUILD_BROKEN_USES_BUILD_COPY_HEADERS := true

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
TARGET_USES_QTI_CAMERA_DEVICE := true
BOARD_QTI_CAMERA_32BIT_ONLY := true
TARGET_TS_MAKEUP := true

# Charger
BOARD_CHARGER_DISABLE_INIT_BLANK := true

# CNE / DPM
BOARD_USES_QCNE := true

# Dex
WITH_DEXPREOPT_BOOT_IMG_AND_SYSTEM_SERVER_ONLY := true

# Display
TARGET_USES_ION := true
TARGET_USES_NEW_ION_API :=true
TARGET_USES_GRALLOC1 := true
TARGET_USES_HWC2 := true
TARGET_USES_OVERLAY := true
TARGET_DISABLE_POSTRENDER_CLEANUP := true

MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024

OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
USE_OPENGL_RENDERER := true

# Filesystem
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false
TARGET_USES_MKE2FS := true
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_PRODUCT := system/product
TARGET_COPY_OUT_SYSTEM_EXT := system/system_ext

#FM
BOARD_HAVE_QCOM_FM := true
TARGET_QCOM_NO_FM_FIRMWARE := true

# GPS
TARGET_NO_RPC := true
USE_DEVICE_SPECIFIC_GPS := true

# HIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += $(DEVICE_PATH)/msm8953_framework_compatibility_matrix.xml
DEVICE_FRAMEWORK_MANIFEST_FILE := $(DEVICE_PATH)/framework_manifest.xml
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml
DEVICE_MATRIX_FILE   := $(DEVICE_PATH)/compatibility_matrix.xml
PRODUCT_ENFORCE_VINTF_MANIFEST_OVERRIDE := true

# HWUI
HWUI_COMPILE_FOR_PERF := true

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_daisy
TARGET_RECOVERY_DEVICE_MODULES := //$(DEVICE_PATH):libinit_daisy

# Kernel
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci earlycon=msm_hsl_uart,0x78af000 androidboot.usbconfigfs=true
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_PAGESIZE :=  2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100
TARGET_KERNEL_SOURCE := kernel/xiaomi/msm8953
TARGET_KERNEL_CONFIG := daisy_defconfig

# Media
TARGET_USES_MEDIA_EXTENSIONS := true

# Partitions
BOARD_HAS_REMOVABLE_STORAGE := true
BOARD_VENDORIMAGE_PARTITION_SIZE := 805306368
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_ROOT_EXTRA_SYMLINKS := \
    /vendor/dsp:/dsp \
    /vendor/firmware_mnt:/firmware \
    /mnt/vendor/persist:/persist

# Peripheral manager
TARGET_PER_MGR_ENABLED := true

# Power
TARGET_TAP_TO_WAKE_NODE := "/proc/touchpanel/wakeup_gesture"
TARGET_HAS_NO_POWER_STATS := true

# Qualcomm
BOARD_USES_QCOM_HARDWARE := true

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom
TARGET_NO_RECOVERY := true
BOARD_USES_RECOVERY_AS_BOOT := true

# Security Patch Level
VENDOR_SECURITY_PATCH := 2020-11-05

# Sepolicy
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Telephony
TARGET_USES_ALTERNATIVE_MANUAL_NETWORK_SELECT := true

# Vndk
BOARD_VNDK_VERSION := current
BOARD_VNDK_RUNTIME_DISABLE := true

# Wi-Fi
BOARD_HAS_QCOM_WLAN := true
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WPA_SUPPLICANT_VERSION := VER_0_8_X
WIFI_HIDL_UNIFIED_SUPPLICANT_SERVICE_RC_ENTRY := true
TARGET_HAS_BROKEN_WLAN_SET_INTERFACE := true

# Inherit from the proprietary version
-include vendor/xiaomi/daisy/BoardConfigVendor.mk
-include vendor/xiaomi/msm8953-common/BoardConfigVendor.mk
