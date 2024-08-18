#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from a25x device
$(call inherit-product, device/samsung/a25x/device.mk)

PRODUCT_DEVICE := a25x
PRODUCT_NAME := twrp_a25x
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A256E
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a25xdxx-user 12 SP1A.210812.016 A256EXXU1AXB4 release-keys"

BUILD_FINGERPRINT := samsung/a25xdxx/a25x:12/SP1A.210812.016/A256EXXU1AXB4:user/release-keys
