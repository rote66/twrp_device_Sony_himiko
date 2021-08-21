## Specify phone tech before including full_phone
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/Sony/himiko/device.mk)
$(call inherit-product, device/Sony/himiko/RecoveryConfig.mk)

# Release name
PRODUCT_RELEASE_NAME := Xperia 8

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := himiko
PRODUCT_NAME := omni_himiko
PRODUCT_BRAND := Sony
PRODUCT_MODEL := SOV42
PRODUCT_MANUFACTURER := Sony

BUILD_FINGERPRINT=KDDI/SOV42_jp_kdi/SOV42:10/56.1.C.3.186/056001C003018603917712517:user/release-keys
    
