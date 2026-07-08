#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

# A/B Slot Support
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS := \
    system \
    vendor \
    product \
    system_ext

# Dynamic Partitions Support (Android 11 Standard)
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_OTA_DYNAMIC_PARTITIONS := true
PRODUCT_OTA_DYNAMIC_PARTITIONS_PARTITION_LIST := \
    product \
    system \
    system_ext \
    vendor

# Boot Control HAL - Android 11 Compatible (Helio G25/MT6765 Platform)
PRODUCT_PACKAGES += \
    android.hardware.boot@1.1-impl \
    android.hardware.boot@1.1-service \
    bootctrl.mt6765

# Android 11 OTA & Sideload Packages
PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload

# Verified Boot (dm-verity)
PRODUCT_SUPPORTS_VERITY := true
PRODUCT_SUPPORTS_VERITY_FEC := true

# Prefer vendor/twrp, fallback to vendor/omni
ifneq ($(wildcard vendor/twrp/config/common.mk),)
  $(call inherit-product, vendor/twrp/config/common.mk)
else
  ifneq ($(wildcard vendor/omni/config/common.mk),)
    $(call inherit-product, vendor/omni/config/common.mk)
  endif
endif
