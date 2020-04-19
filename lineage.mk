# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOTANIMATION_HALF_RES := true

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from G device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit vendor
$(call inherit-product-if-exists, vendor/10or/G/G-vendor.mk)

PRODUCT_BRAND := 10or
PRODUCT_DEVICE := G
PRODUCT_MANUFACTURER := 10or
PRODUCT_NAME := lineage_G
PRODUCT_MODEL := G

PRODUCT_GMS_CLIENTID_BASE := android-10or
TARGET_VENDOR := 10or
TARGET_VENDOR_PRODUCT_NAME := G
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="G-user 8.1.0 OPM1.171019.019 10or_G_V1_0_82 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := 10or/G/G:8.1.0/OPM1.171019.019/10or_G_V1_0_82:user/release-keys

