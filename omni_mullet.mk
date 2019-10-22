## Specify phone tech before including full_phone
$(call inherit-product, vendor/omni/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := mullet

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/misfit/mullet/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := mullet
PRODUCT_NAME := omni_mullet
PRODUCT_BRAND := Misfit
PRODUCT_MODEL := Vapor
PRODUCT_MANUFACTURER := Misfit
