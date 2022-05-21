# Release name
PRODUCT_RELEASE_NAME := gtexswifi

# Inherit device configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/samsung/gtexswifi/device.mk)


# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 800

# Inherit some common stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gtexswifi
PRODUCT_NAME := lineage_gtexswifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T280
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
        PRODUCT_NAME=gtexswifixx \
        TARGET_DEVICE=gtexswifi \
        PRIVATE_BUILD_DESC="gtexswifixx-user 5.1.1 LMY47V T280XXU0AQA4 release-keys" 

BUILD_FINGERPRINT=samsung/gtexswifixx/gtexswifi:5.1.1/LMY47V/T280XXU0AQA4:user/release-keys \ 
