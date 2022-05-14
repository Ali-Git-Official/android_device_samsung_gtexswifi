LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),gtexswifi)
include $(call all-makefiles-under,$(LOCAL_PATH))
