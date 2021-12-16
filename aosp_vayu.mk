#
# Copyright (C) 2018-2021 ArrowOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common products
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Target
TARGET_BOOT_ANIMATION_RES := 1080
KRAKEN_VANILLA := true

# Inherit device configurations
$(call inherit-product, device/xiaomi/vayu/device.mk)

# Inherit common configurations
$(call inherit-product, vendor/aosp/config/common.mk)

# MG-APKS
$(call inherit-product-if-exists, vendor/mg-apks/config.mk)
PRODUCT_BROKEN_VERIFY_USES_LIBRARIES := true

# Lawnchair Launcher
$(call inherit-product-if-exists, vendor/lawnchair/lawnchair.mk)

PRODUCT_NAME := aosp_vayu
PRODUCT_DEVICE := vayu
PRODUCT_BRAND := POCO
PRODUCT_MODEL := Poco X3 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="redfin-user 12 SQ1A.211205.008 7888514 release-keys"

BUILD_FINGERPRINT := google/redfin/redfin:12/SQ1A.211205.008/7888514:user/release-keys

