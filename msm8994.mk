#
# Copyright (C) 2025 The Android4Lumia Project
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

# Everything in this directory will become public

PRODUCT_ENABLE_UFFD_GC := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_RETROFIT_DYNAMIC_PARTITIONS := true
#PRODUCT_FULL_TREBLE_OVERRIDE := true

# APEX
PRODUCT_COPY_FILES += \
    device/huawei/msm8994-common/configs/ld.config.txt:$(TARGET_COPY_OUT_VENDOR)/etc/swcodec/ld.config.txt

# Audio
PRODUCT_PACKAGES += \
    audio.primary.msm8994 \
    audio.usb.default \
    audio.r_submix.default \
    libaudio-resampler

USE_XML_AUDIO_POLICY_CONF := 1

# Audio configs
PRODUCT_COPY_FILES += \
    device/huawei/msm8994-common/audio/aanc_tuning_mixer.txt:$(TARGET_COPY_OUT_VENDOR)/etc/aanc_tuning_mixer.txt \
    device/huawei/msm8994-common/audio/audio_output_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_output_policy.conf \
    device/huawei/msm8994-common/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    device/huawei/msm8994-common/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    device/huawei/msm8994-common/audio/audio_platform_info_i2s.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_i2s.xml \
    device/huawei/msm8994-common/audio/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths.xml \
    device/huawei/msm8994-common/audio/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_platform_info.xml \
    device/huawei/msm8994-common/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    device/huawei/msm8994-common/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    device/huawei/msm8994-common/audio/audio_policy_volumes_drc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes_drc.xml \
    frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/bluetooth_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml

# Audio effects
PRODUCT_PACKAGES += \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libqcomvoiceprocessingdescriptors \
    libqcompostprocbundle

# Bluetooth
PRODUCT_PACKAGES += \
    libbt-vendor

$(call add-product-sanitizer-module-config,cameraserver,never)
$(call add-product-sanitizer-module-config,mm-qcamera-daemon,never)

# Characteristics
PRODUCT_CHARACTERISTICS := nosdcard

# Configstore
PRODUCT_PACKAGES += \
    disable_configstore

# Dalvik/HWUI


PRODUCT_TAGS += dalvik.gc.type-precise

# Display
PRODUCT_PACKAGES += \
    gralloc.msm8994 \
    hwcomposer.msm8994 \
    memtrack.msm8994

# Fastbootd
PRODUCT_PACKAGES += \
    fastbootd

# Filesystem
# For android_filesystem_config.h
PRODUCT_PACKAGES += \
   fs_config_files


PRODUCT_PACKAGES += \
    gps.msm8994 \
    flp.conf \
    gps.conf \
    izat.conf \
    sap.conf \
    libgps.utils


# Keylayouts
PRODUCT_COPY_FILES += \
    device/huawei/msm8994-common/keylayout/gpio-keys.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/gpio-keys.kl \
    device/huawei/msm8994-common/keylayout/qpnp_pon.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/qpnp_pon.kl \
    device/huawei/msm8994-common/keylayout/synaptics_dsx.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/synaptics_dsx.idc

# libcutils
PRODUCT_PACKAGES += \
    libcutils_shim

# Media
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml \
    device/huawei/msm8994-common/media/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    device/huawei/msm8994-common/media/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    device/huawei/msm8994-common/media/media_profiles.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles.xml



# MSM IRQ Balancer configuration
PRODUCT_COPY_FILES += \
    device/huawei/msm8994-common/configs/msm_irqbalance.conf:$(TARGET_COPY_OUT_VENDOR)/etc/msm_irqbalance.conf

# NFC
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    NfcNci \
    Tag

# NFC configurations
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.hcef.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hcef.xml

# Off mode charging
PRODUCT_PACKAGES += \
    charger_res_images

# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libstagefrighthw \
    libOmxCore \
    libmm-omxcore \
    libOmxVdec \
    libOmxVenc

# Overlay
DEVICE_PACKAGE_OVERLAYS := \
    device/huawei/msm8994-common/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.camera.raw.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.passpoint.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.wifi.passpoint.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.sensor.hifi_sensors.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.sensor.hifi_sensors.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.audio.pro.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.audio.pro.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.ims.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.telephony.ims.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.software.midi.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.verified_boot.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.software.verified_boot.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.vulkan.level.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.vulkan.version.xml

# Privileged permissions whitelist
PRODUCT_COPY_FILES += \
     device/huawei/msm8994-common/configs/privapp-permissions-qcom.xml:system/etc/permissions/privapp-permissions-qcom.xml

# Ramdisk
PRODUCT_COPY_FILES += \
    device/huawei/msm8994-common/rootdir/bin/init.qcom.power.sh:$(TARGET_COPY_OUT_VENDOR)/bin/init.qcom.power.sh \
    device/huawei/msm8994-common/rootdir/bin/init.qcom.qseecomd.sh:$(TARGET_COPY_OUT_VENDOR)/bin/init.qcom.qseecomd.sh \
    device/huawei/msm8994-common/rootdir/bin/init.mcfg.sh:$(TARGET_COPY_OUT_VENDOR)/bin/init.mcfg.sh \
    device/huawei/msm8994-common/rootdir/bin/init.qcom.devstart.sh:$(TARGET_COPY_OUT_VENDOR)/bin/init.qcom.devstart.sh	\
    device/huawei/msm8994-common/rootdir/bin/init.qcom.devwait.sh:$(TARGET_COPY_OUT_VENDOR)/bin/init.qcom.devwait.sh \
    device/huawei/msm8994-common/rootdir/bin/init.radio.sh:$(TARGET_COPY_OUT_VENDOR)/bin/init.radio.sh \
    device/huawei/msm8994-common/rootdir/etc/init.qcom.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.qcom.rc \
    device/huawei/msm8994-common/rootdir/etc/init.qcom.usb.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.qcom.usb.rc \
    device/huawei/msm8994-common/rootdir/etc/ueventd.qcom.rc:$(TARGET_COPY_OUT_VENDOR)/etc/ueventd.rc \
    device/huawei/msm8994-common/rootdir/etc/init.recovery.qcom.rc:root/init.recovery.qcom.rc

# RIL
PRODUCT_PACKAGES += \
   libaudioclient_shim \
   librmnetctl

# Seccomp
PRODUCT_COPY_FILES += \
    device/huawei/msm8994-common/seccomp/mediacodec.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy

# SEC config
PRODUCT_COPY_FILES += \
    device/huawei/msm8994-common/configs/sec_config:$(TARGET_COPY_OUT_VENDOR)/etc/sec_config


# Shipping API
PRODUCT_SHIPPING_API_LEVEL := 23

# System Properties
-include device/huawei/msm8994-common/system_prop.mk

# Telephony
PRODUCT_PACKAGES += \
    telephony-ext \
    ims-ext-common \
    ims_ext_common.xml \
    qti-telephony-hidl-wrapper \
    qti_telephony_hidl_wrapper.xml \
    qti-telephony-utils \
    qti_telephony_utils.xml \

PRODUCT_BOOT_JARS += \
    telephony-ext

$(call add-product-sanitizer-module-config,thermal-engine,never)
$(call add-product-sanitizer-module-config,qmuxd,never)


# TimeKeep
PRODUCT_PACKAGES += \
    timekeep \
    TimeKeep

# TinyXML
PRODUCT_PACKAGES += \
    libtinyxml

# Verity
# Setup dm-verity config
#RODUCT_SYSTEM_VERITY_PARTITION := /dev/block/platform/soc.0/f9824900.sdhci/by-name/system

# VNDK
PRODUCT_PACKAGES += \
    libutils-v33

# Wi-Fi
PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    wificond \
    wpa_supplicant \
    wpa_supplicant.conf \
    WifiOverlay

# WiFi configurations
PRODUCT_COPY_FILES += \
    device/huawei/msm8994-common/configs/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    device/huawei/msm8994-common/configs/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf

## This is a workaround for the Bluetooth sanitize shadow call stack (SCS)
## crash reported here: https://issuetracker.google.com/issues/302408537.
## For details of the root cause and the cts vts tests comparison between
## the preloading and non-preloading builds, please check the above issue.
PRODUCT_PROPERTY_OVERRIDES += ro.zygote.disable_gl_preload=1

$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4358/device-bcm.mk)
$(call inherit-product, device/huawei/msm8994-common/hidl.mk)
$(call inherit-product-if-exists, hardware/qcom/msm8994/msm8994.mk)
$(call inherit-product-if-exists, vendor/qcom/gpu/msm8994/msm8994-gpu-vendor.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
$(call inherit-product, device/huawei/msm8994-common/utils.mk)