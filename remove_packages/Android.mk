LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemovePackages
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := SimpleCalendar Calendar SimpleGallery Gallery2 DuckDuckGo Browser2 GCamGo GCamGOPrebuilt GCamGOPrebuilt-V2 Camera2 Email UnifiedEmail messaging ViaBrowser
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)
