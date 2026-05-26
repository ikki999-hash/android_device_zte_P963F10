#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/zte/P963F10

# Enable Virtual A/B (VAB) Configuration Rules
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# A/B OTA Post-installation Script Layout
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot Control HAL Interface Implementation (Updated to 1.1/1.2 handling)
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service \
    android.hardware.boot@1.1-impl \
    android.hardware.boot@1.1-service \
    android.hardware.boot@1.2-impl-recovery

PRODUCT_PACKAGES += \
    bootctrl.sp9863a \
    bootctrl.sp9863a.recovery

PRODUCT_STATIC_BOOT_CONTROL_HAL := \
    bootctrl.sp9863a \
    libgptutils \
    libz \
    libcutils

# Core Update Engine and Sideload Tools
PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload

# Fastbootd & Dynamic Partition Logical Recovery Management
PRODUCT_PACKAGES += \
    fastbootd \
    android.hardware.fastboot@1.0-impl-mock \
    librecovery_updater_unisoc

# Crypto / Decryption Support Foundations (Crucial for mounting Userdata)
PRODUCT_PACKAGES += \
    gatekeeperd \
    libgatekeeper \
    android.hardware.gatekeeper@1.0-service \
    android.hardware.keymaster@4.0-service.unisoc
