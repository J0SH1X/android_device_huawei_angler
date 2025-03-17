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

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@5.0-impl \
    android.hardware.audio.service \
    android.hardware.audio.effect@5.0-impl \
    android.hardware.soundtrigger@2.0-impl

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0 \
    android.hardware.bluetooth@1.0-service \
    android.hardware.bluetooth@1.0-impl \
    android.hardware.bluetooth.audio@2.1-impl \

# Camera
PRODUCT_PACKAGES += \
    camera.device@3.2-impl \
    android.hardware.camera.provider@2.4-impl \
    android.hardware.camera.provider@2.4-service

# Display
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-service \
    android.hardware.graphics.mapper@2.0-impl-2.1 \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service \
    android.hardware.drm-service.clearkey

# Gatekeeper
PRODUCT_PACKAGES += \
     android.hardware.gatekeeper@1.0-service.software

# GPS
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl

# Healthd
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# HIDL
PRODUCT_PACKAGES += \
    libhidltransport \
    libhwbinder
    PRODUCT_ENFORCE_VINTF_MANIFEST_OVERRIDE := true

# Keymaster HAL
PRODUCT_PACKAGES += \
    android.hardware.keymaster@4.1-service

# NFC
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.1-service

# Power
PRODUCT_PACKAGES += \
    android.hardware.power-service-qti \
    android.hardware.power.stats@1.0-service.mock

# Thermal
PRODUCT_PACKAGES += \
    android.hardware.thermal@2.0-service.mock

# RenderScript HAL
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl \
    android.hardware.contexthub@1.0-impl.nanohub \
    android.hardware.contexthub@1.0-service

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl \
    android.hardware.vibrator@1.0-service
