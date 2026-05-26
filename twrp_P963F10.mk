#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from standard 32-bit core product configuration layers
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_32_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from TWRP product configurations (Sets up the recovery core libraries)
$(call inherit-product, vendor/twrp/config/twrp.mk)

# Inherit from your customized local device makefile configurations
$(call inherit-product, device/zte/P963F10/device.mk)

# Device Identification Properties Configuration
PRODUCT_DEVICE := P963F10
PRODUCT_NAME := twrp_P963F10
PRODUCT_BRAND := zte
PRODUCT_MODEL := ZTE Blade A35 Core
PRODUCT_MANUFACTURER := zte

PRODUCT_GMS_VERSION_CHARACTERISTIC := oem_p963f10_go
