#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from P963F10 device
$(call inherit-product, device/zte/P963F10/device.mk)

PRODUCT_DEVICE := P963F10
PRODUCT_NAME := omni_P963F10
PRODUCT_BRAND := ZTE
PRODUCT_MODEL := ZTE Blade A35 Core
PRODUCT_MANUFACTURER := zte

PRODUCT_GMS_CLIENTID_BASE := android-zte

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="s9863a1h10_go_32b_2g-user 13 TP1A.220624.014 20240524.042327 release-keys"

BUILD_FINGERPRINT := ZTE/P963F10_2/P963F10:13/TP1A.220624.014/20240524.042327:user/release-keys
