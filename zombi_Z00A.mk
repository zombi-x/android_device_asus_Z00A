# Boot animation
TARGET_SCREEN_HEIGHT := 1080
TARGET_SCREEN_WIDTH := 1920

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit APNs list
$(call inherit-product, vendor/zombi/config/gsm.mk)

# Inherit omni configuration
$(call inherit-product, vendor/zombi/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/asus/Z00A/device.mk)

# Enhanced NFC
## $(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

DEVICE_PACKAGE_OVERLAYS += device/asus/Z00A/overlay

PRODUCT_RUNTIMES := runtime_libart_default

## Device identifier. This must come after all inclusions
PRODUCT_NAME := zombi_Z00A
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_Z00A
PRODUCT_MANUFACTURER := asus
PRODUCT_DEVICE := Z00A
