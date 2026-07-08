#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from RAVOZ_Z6_Pro device
$(call inherit-product, device/ravoz/RAVOZ_Z6_Pro/device.mk)

PRODUCT_DEVICE := RAVOZ_Z6_Pro
PRODUCT_NAME := omni_RAVOZ_Z6_Pro
PRODUCT_BRAND := RAVOZ
PRODUCT_MODEL := RAVOZ Z6 Pro
PRODUCT_MANUFACTURER := ravoz

PRODUCT_GMS_CLIENTID_BASE := android-coosea

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k62v1_64_bsp-user 11 RP1A.200720.011 1632568586 release-keys"

BUILD_FINGERPRINT := RAVOZ/RAVOZ_Z6_Pro/RAVOZ_Z6_Pro:11/RP1A.200720.011/1632568586:user/release-keys
