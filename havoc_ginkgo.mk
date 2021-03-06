#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, device/xiaomi/ginkgo/device.mk)

# Inherit some common Havoc OS stuff.
$(call inherit-product, vendor/havoc/config/common_full_phone.mk)

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Official HAVOC OS
export export HAVOC_BUILD_TYPE=official

# HAVOC OS Maintainer
PRODUCT_PROPERTY_OVERRIDES += \
ro.havoc.maintainer = "bezke"

export SELINUX_IGNORE_NEVERALLOWS=true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := havoc_ginkgo
PRODUCT_DEVICE := ginkgo
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 8
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ginkgo-user 9 PKQ1.190616.001 V10.3.3.0.PCOINXM release-keys" \
    PRODUCT_NAME="ginkgo" \
    TARGET_DEVICE="ginkgo"

BUILD_FINGERPRINT := "xiaomi/ginkgo/ginkgo:9/PKQ1.190616.001/V10.3.3.0.PCOINXM:user/release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
