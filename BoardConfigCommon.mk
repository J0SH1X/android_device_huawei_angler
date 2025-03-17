#
# Copyright (C) 2015 The Android Open-Source Project
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



# Hax/Workarounds
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_USES_BUILD_COPY_HEADERS := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
RELAX_USES_LIBRARY_CHECK := true
BOARD_SUPPRESS_SECURE_ERASE := true

# A/B
AB_OTA_UPDATER := false

# ADB
WITH_ADB_INSECURE := true

#Audio
BOARD_USES_ALSA_AUDIO := true
AUDIO_FEATURE_ENABLED_DSM_FEEDBACK := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true


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
TARGET_2ND_CPU_VARIANT := cortex-a53.a57

# Bluetooth
BOARD_HAVE_BLUETOOTH := true


# Board
TARGET_BOARD_PLATFORM := msm8994
TARGET_DISABLE_POSTRENDER_CLEANUP := true
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_NO_RPC := true

BOARD_USES_SECURE_SERVICES := true

# Camera
BOARD_QTI_CAMERA_32BIT_ONLY := true

# Display
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
TARGET_USES_ION := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_GRALLOC1_ADAPTER := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
MAX_VIRTUAL_DISPLAY_DIMENSION := 2048
TARGET_USES_HWC2 := true
VSYNC_EVENT_PHASE_OFFSET_NS := 2000000
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 6000000
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
OVERRIDE_RS_DRIVER:= libRSDriver_adreno.so
BOARD_CHARGER_DISABLE_INIT_BLANK := true
TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS := 0x2000U | 0x02000000U

# Inline kernel building
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_NOT_USE_GZIP_RECOVERY_RAMDISK := true
TARGET_COMPILE_WITH_MSM_KERNEL := true
TARGET_KERNEL_CLANG_COMPILE := false

BOARD_KERNEL_BASE        := 0x00000000
BOARD_KERNEL_PAGESIZE    := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x01E00000
BOARD_RAMDISK_OFFSET     := 0x02000000

BOARD_KERNEL_CMDLINE += androidboot.console=ttyHSL0 msm_rtb.filter=0x37 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 boot_cpus=0-3 no_console_suspend swiotlb=2048
BOARD_KERNEL_CMDLINE += loop.max_part=7 androidboot.selinux=permissive androidboot.boot_devices=soc.0/f9824900.sdhci


BOARD_MKBOOTIMG_ARGS := --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)

#GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)
BOARD_VENDOR_QCOM_LOC_PDK_FEATURE_SET := true


# Legacy memfd
TARGET_HAS_MEMFD_BACKPORT := true


#Images
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4


BOARD_SYSTEMIMAGE_JOURNAL_SIZE := 0
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE    := ext4
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE    := ext4

TARGET_USES_MKE2FS := true
TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_PRODUCT := product

BOARD_ROOT_EXTRA_FOLDERS := firmware persist

TARGET_FS_CONFIG_GEN += device/huawei/msm8994-common/config.fs

BOARD_SUPER_PARTITION_GROUPS := qcom_dynamic_partitions
BOARD_QCOM_DYNAMIC_PARTITIONS_PARTITION_LIST := system vendor product
BOARD_SUPER_PARTITION_METADATA_DEVICE := system
BOARD_SUPER_PARTITION_BLOCK_DEVICES := system

BOARD_VENDORIMAGE_PARTITION_RESERVED_SIZE := 100000000
BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE := 100000000

# HIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := \
    device/huawei/msm8994-common/framework_compatibility_matrix.xml \
    hardware/qcom-caf/common/vendor_framework_compatibility_matrix.xml \
    hardware/qcom-caf/common/vendor_framework_compatibility_matrix_legacy.xml \
    vendor/lineage/config/device_framework_matrix.xml

DEVICE_MANIFEST_FILE := device/huawei/msm8994-common/manifest.xml
DEVICE_MATRIX_FILE := device/huawei/msm8994-common/compatibility_matrix.xml

# Qcom hardware
BOARD_USES_QCOM_HARDWARE := true

# Recovery
TARGET_USES_INTERACTION_BOOST := true
TARGET_RECOVERY_UI_LIB := librecovery_ui_nanohub

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := device/huawei/msm8994-common

# Selinux
SELINUX_IGNORE_NEVERALLOWS := true
SELINUX_IGNORE_NEVERALLOWS_ON_USER := true
BOARD_SEPOLICY_DIRS += device/huawei/msm8994-common/sepolicy/vendor
SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += device/huawei/msm8994-common/sepolicy/private


$(call inherit-product-if-exists, vendor/huawei/msm8994-common/BoardConfigVendor.mk)