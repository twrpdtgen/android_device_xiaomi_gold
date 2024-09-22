#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from gold device
$(call inherit-product, device/xiaomi/gold/device.mk)

PRODUCT_DEVICE := gold
PRODUCT_NAME := omni_gold
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := gold
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_gold-user 12 TP1A.220624.014 V14.0.3.0.TNQIDXM release-keys"

BUILD_FINGERPRINT := Redmi/vnd_gold/gold:12/TP1A.220624.014/V14.0.3.0.TNQIDXM:user/release-keys
