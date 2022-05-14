$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
# Product API level
#$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_q.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/gtexswifi/device.mk)

### BOOTANIMATION
# vendor/lineage/config/common_full_phone.mk
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 800
# vendor/lineage/config/common.mk
TARGET_BOOTANIMATION_HALF_RES := true

### LINEAGE
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_gtexswifi
PRODUCT_DEVICE := gtexswifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T280
PRODUCT_MANUFACTURER := samsung
PRODUCT_PDA_MODEL := T280
PRODUCT_PDA_MODEL_VERSION := T280XXU0AQK2
PRODUCT_PDA_VERSION := $(PRODUCT_PDA_MODEL)$(PRODUCT_PDA_MODEL_VERSION)
PRODUCT_SHIPPING_API_LEVEL := 29
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=gta4xlwifixx \
    PRODUCT_DEVICE=gta4xlwifi \
    PRIVATE_BUILD_DESC="gta4xlwifixx-user 10 QP1A.190711.020 $(PRODUCT_PDA_VERSION) release-keys"

BUILD_FINGERPRINT := BUILD_FINGERPRINT=samsung/gtexswifixx/gtexswifi:5.1.1/LMY47V/T280XXU0AQA4/$(PRODUCT_PDA_VERSION):user/release-keys

PRODUCT_PRODUCT_PROPERTIES += \
    ro.build.PDA=$(PRODUCT_PDA_VERSION)

ifneq ($(LINEAGE_DEV_CERTIFICATE),)
    PRODUCT_DEFAULT_DEV_CERTIFICATE := $(LINEAGE_DEV_CERTIFICATE)
endif
