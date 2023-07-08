#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/lancelot/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

PRODUCT_NAME := derp_lancelot
PRODUCT_DEVICE := lancelot
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := M2004J19C

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

#derp_stuff
USE_LEGACY_BOOTANIMATION := true
TARGET_USES_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lancelot-user 12 SP1A.210812.016 V13.0.4.0.SJCMIXM release-keys"

BUILD_FINGERPRINT := Redmi/lancelot_global/lancelot:12/SP1A.210812.016/V13.0.4.0.SJCMIXM:user/release-keys
