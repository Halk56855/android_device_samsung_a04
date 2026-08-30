#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from a04 device
$(call inherit-product, device/samsung/a04/device.mk)

# Inherit some common Lineage stuff (تم تحديث المسار ليتوافق مع الهيكل الحديث)
$(call inherit-product, vendor/lineage/config/common.mk)

PRODUCT_DEVICE := a04
PRODUCT_NAME := lineage_a04
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A045F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

# تحديث إعدادات البصمة والوصف لتتجنب التضارب مع نظام أندرويد 16 الجديد
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="a04xx-user 16 BP1A.250512.014 A045FXXSFEZE2 release-keys" \
    BuildFingerprint="samsung/a04xx/a04:16/BP1A.250512.014/A045FXXSFEZE2:user/release-keys"