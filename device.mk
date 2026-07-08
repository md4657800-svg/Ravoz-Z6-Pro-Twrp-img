#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

# A/B Support
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS := \
    system \
    vendor \
    product \
    system_ext

# Dynamic partitions for A/B (Android 11 Proper Support)
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_OTA_DYNAMIC_PARTITIONS := true
PRODUCT_OTA_DYNAMIC_PARTITIONS_PARTITION_LIST := \
    product \
    system \
    system_ext \
    vendor

# Boot control HAL - Android 11 compatible
PRODUCT_PACKAGES += \
    android.hardware.boot@1.1-impl \
    android.hardware.boot@1.1-service \
    bootctrl.mt6765

# OTA packages
PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload

# Verified Boot
PRODUCT_SUPPORTS_VERITY := true
PRODUCT_SUPPORTS_VERITY_FEC := true
