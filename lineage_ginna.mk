# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from ginna device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := motorola
PRODUCT_DEVICE := ginna
PRODUCT_MANUFACTURER := motorola
PRODUCT_NAME := lineage_ginna
PRODUCT_MODEL := moto e

PRODUCT_GMS_CLIENTID_BASE := android-motorola
TARGET_VENDOR := motorola
TARGET_VENDOR_PRODUCT_NAME := ginna
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="ginna_retail-user 10 QPG30.82-105 80737 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := motorola/ginna_retail/ginna:10/QPG30.82-105/80737:user/release-keys
