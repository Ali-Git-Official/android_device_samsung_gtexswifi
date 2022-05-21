### device.mk ###

$(call inherit-product-if-exists, vendor/samsung/gtexswifi/gtexswifi-vendor.mk)
# Vendor properties
-include $(LOCAL_PATH)/vendor_prop.mk

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from vendor tree
$(call inherit-product-if-exists, vendor/samsung/gtexswifi/gtexswifi-vendor.mk)

# Dalvik Heap config
include frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay


# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := hdpi


# System init .rc files
SYSTEM_INIT_RC_FILES := \
    $(LOCAL_PATH)/system/etc/init/batterysrv.rc \
    $(LOCAL_PATH)/system/etc/init/cp_diskserver.rc \
    $(LOCAL_PATH)/system/etc/init/engpc.rc \
    $(LOCAL_PATH)/system/etc/init/mediacodec.rc \
    $(LOCAL_PATH)/system/etc/init/mediaserver.rc \
    $(LOCAL_PATH)/system/etc/init/modem_control.rc \
    $(LOCAL_PATH)/system/etc/init/modemd.rc \
    $(LOCAL_PATH)/system/etc/init/phoneserver.rc \
    $(LOCAL_PATH)/system/etc/init/prepare_param.rc \
    $(LOCAL_PATH)/system/etc/init/refnotify.rc \
    $(LOCAL_PATH)/system/etc/init/smd_symlink.rc \
    $(LOCAL_PATH)/system/etc/init/surfaceflinger.rc \
    $(LOCAL_PATH)/system/etc/init/wcnd.rc
    
    
    # Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/tiny_hw.xml:system/etc/sound/gtexswifi
    
    
    
    # Camera HAL
#PRODUCT_PACKAGES += \
#    camera.sc8830


# f2fs
PRODUCT_PACKAGES += \
    fsck.f2fs \
    mkfs.f2fs
    
    
    PRODUCT_PACKAGES += \
    libhealthd.sc8830 \
    power.sc8830
    
    
    # GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/configs/gps/gps.xml:system/etc/gps.xml \
    $(LOCAL_PATH)/configs/gps/gnss_cfg.xml:system/etc/gnss_cfg.xml
    
    
    
    # Keylayout
  PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl \
    $(LOCAL_PATH)/keylayout/sci-keypad.kl:system/usr/keylayout/sci-keypad.kl
    
    
    
    
