#
# Copyright (C) 2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

include device/samsung/gtexswifi/BoardConfigPlatform.mk
include vendor/samsung/gtexswifi/BoardConfigVendor.mk

DEVICE_PATH := device/samsung/gtexswifi

# APEX image
DEXPREOPT_GENERATE_APEX_IMAGE := true

PRODUCT_PLATFORM := sc8830

TARGET_OTA_ASSERT_DEVICE := gtexswifi



### KERNEL
TARGET_KERNEL_CONFIG := gtexswifi-dt_defconfig

### SYSTEM PROPS
TARGET_SYSTEM_PROP += vendor/samsung/gtexswifi/system.prop

### VENDOR SECURITY PATCH DATE
VENDOR_SECURITY_PATCH := 2020-11-01

### VENDOR PROPS
TARGET_VENDOR_PROP += device/samsung/gtexswifi/gtexswifi-vendor.mk
