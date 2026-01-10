#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from vayu device
$(call inherit-product, device/xiaomi/vayu/device.mk)

# Cromite Webview
$(call inherit-product-if-exists, vendor/cromite/cromite.mk)

# microG
$(call inherit-product-if-exists, vendor/microg/config.mk)
PRODUCT_BROKEN_VERIFY_USES_LIBRARIES := true

# AxionOS flags
AXION_CAMERA_REAR_INFO := 48,8,5,2
AXION_CAMERA_FRONT_INFO := 20
AXION_PROCESSOR := Qualcomm®_Snapdragon_860

TARGET_EXCLUDES_AUDIOFX := true
TARGET_ENABLE_BLUR := true

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_NAME := lineage_vayu
PRODUCT_DEVICE := vayu
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO X3 Pro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="vayu_global-user 13 RKQ1.200826.002 V14.0.3.0.TJUMIXM release-keys" \
    BuildFingerprint=Xiaomi/vayu_global/vayu:13/RKQ1.200826.002/V14.0.3.0.TJUMIXM:user/release-keys
