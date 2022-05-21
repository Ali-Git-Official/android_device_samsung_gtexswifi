include device/samsung/gtexswifi

TARGET_OTA_ASSERT_DEVICE := SM-T280,gtexswifi


WIFI_DRIVER_MODULE_PATH     := "/lib/modules/sprdwl.ko"


# Bionic
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true


# RIL
BOARD_PROVIDES_RILD := false
BOARD_PROVIDES_LIBRIL := false



# Graphics
TARGET_REQUIRES_SYNCHRONOUS_SETSURFACE := true


# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/gtexswifi/configs/bluetooth

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/gtexswifi
TARGET_KERNEL_CONFIG := gtexswifi-dt_defconfig


# Cache
BOARD_CACHEIMAGE_PARTITION_SIZE    := 209715200
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

# Recovery
TARGET_RECOVERY_FSTAB = device/samsung/gtexswifi/rootdir/recovery.fstab
TARGET_USERIMAGES_USE_EXT4 := true
#TARGET_USERIMAGES_USE_F2FS := true







