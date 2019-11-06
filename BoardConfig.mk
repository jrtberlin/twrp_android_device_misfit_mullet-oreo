# inherit from the proprietary version
-include vendor/misfit/mullet/BoardConfigVendor.mk

DEVICE_PATH := device/misfit/mullet

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm8909
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
ARCH_ARM_HAVE_TLS_REGISTER := true

USE_CAMERA_STUB := true

# Krait optimizations
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_KRAIT_BIONIC_PLDOFFS := 10
TARGET_KRAIT_BIONIC_PLDTHRESH := 10
TARGET_KRAIT_BIONIC_BBTHRESH := 64
TARGET_KRAIT_BIONIC_PLDSIZE := 64

TARGET_NO_RADIOIMAGE := true
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := mullet

BOARD_KERNEL_CMDLINE := androidboot.hardware=mullet console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 earlycon=msm_hsl_uart,0x78af000 androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --base 0x00000000 --ramdisk_offset 0x02000000 --tags_offset 0x01e00000
BOARD_KERNEL_PAGESIZE := 2048

# prebuilt kernel
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/kernel

BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x4cccd000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x7befbe00
BOARD_CACHEIMAGE_PARTITION_SIZE := 0x4000000
BOARD_FLASH_BLOCK_SIZE := 131072

# Crypto
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_JB_CRYPTO := true

# Android Verified Boot
BOARD_AVB_ENABLE := false
BOARD_BUILD_DISABLED_VBMETAIMAGE := true

# recovery
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

# what is this?
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true 
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/config/twrp.fstab

# TWRP
TW_THEME := watch_mdpi
TW_ROUND_SCREEN := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_NO_USB_STORAGE := true
BOARD_SUPPRESS_SECURE_ERASE := true
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
TW_EXCLUDE_SUPERSU := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 180
TARGET_RECOVERY_QCOM_RTC_FIX := true
