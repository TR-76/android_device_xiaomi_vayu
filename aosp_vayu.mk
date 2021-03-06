#
# Copyright (C) 2018-2021 ArrowOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common products
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Build type
KRAKEN_BUILD_TYPE := UNOFFICIAL

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

PRODUCT_NAME := aosp_vayu
PRODUCT_DEVICE := vayu
PRODUCT_BRAND := POCO
PRODUCT_MODEL := Poco X3 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vayu_global-user 11 RKQ1.200826.002 V12.5.5.0.RJUMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/vayu_global/vayu:11/RKQ1.200826.002/V12.5.5.0.RJUMIXM:user/release-keys

# Additions
$(call inherit-product-if-exists, vendor/lawnchair/lawnchair.mk)
