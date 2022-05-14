### PLATFORM
$(call inherit-product, device/samsung/gtexswifi/platform.mk)
### PROPRIETARY VENDOR FILES
$(call inherit-product, vendor/samsung/gtexswifi/gtexswifi-vendor.mk)

DEVICE_PATH := device/samsung/gtexswifi

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay
   
