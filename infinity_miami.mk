#
# Copyright (C) 2022-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from miami device
$(call inherit-product, device/motorola/miami/device.mk)

# Inherit some common InfinityX stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# Whether you are compiling being an OFFICIAL Maintainer:
INFINITY_BUILD_TYPE := UNOFFICIAL

# Maintainer Name
INFINITY_MAINTAINER := Bashid_Akhtan

# Whether the package includes System BLURS
TARGET_SUPPORTS_BLUR := true

# Whether the compiled package ships Widely Used Minimal Google Apps:
WITH_GAPPS := true

# Whether the compiled package ships Complete present Google Apps:
TARGET_SHIPS_FULL_GAPPS := true

# Whether the compiled shipped gapps package uses Google Dialer, Messaging, Contacts:
TARGET_BUILD_GOOGLE_TELEPHONY := false

# Whether the compiled package ships Moto Calculator irrespective VANILLA or GAPPS:
USE_MOTO_CALCULATOR := false

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := infinity_miami
PRODUCT_DEVICE := miami
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto edge 30 neo

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="miami_g-user 14 U1SSMS34M.31-64-4-7 52f469 release-keys" \
    BuildFingerprint=motorola/miami_g/miami:14/U1SSMS34M.31-64-4-7/52f469:user/release-keys \
    DeviceProduct=miami_g
