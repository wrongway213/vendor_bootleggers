LOCAL_PATH := $(call my-dir)

# a wrapper for curl which provides wget syntax, for compatibility
include $(CLEAR_VARS)
LOCAL_MODULE := wget
LOCAL_SRC_FILES := bin/wget
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
include $(BUILD_PREBUILT)

#
# Prebuilt APKs
#
#Gallery app
include $(CLEAR_VARS)
LOCAL_MODULE := CameraRoll
LOCAL_SRC_FILES := app/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_OVERRIDES_PACKAGES := Gallery Gallery2 SnapdragonGallery VanillaGallery
include $(BUILD_PREBUILT)

#FileManager App
include $(CLEAR_VARS)
LOCAL_MODULE := MiXplorerPrebuilt
LOCAL_SRC_FILES := app/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_OVERRIDES_PACKAGES := CMFileManager Amaze AmazeFM crDroidFileManager
include $(BUILD_PREBUILT)

#ShishuWalls, my photo wallpaper app
include $(CLEAR_VARS)
LOCAL_MODULE := ShishuWalls
LOCAL_SRC_FILES := app/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

# WallpaperPickerGoogle
include $(CLEAR_VARS)
LOCAL_MODULE := WallpaperPickerGoogle
LOCAL_SRC_FILES := app/WallpaperPickerGoogle.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)

# GoogleMarkup
include $(CLEAR_VARS)
LOCAL_MODULE := MarkupGoogle
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := app/$(LOCAL_MODULE).apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_DEX_PREOPT := false

#Music App
include $(CLEAR_VARS)
LOCAL_MODULE := MusicPlayer
LOCAL_SRC_FILES := app/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_OVERRIDES_PACKAGES := Music SnapdragonMusic crDroidMusic Phonograph Eleven VanillaMusic
include $(BUILD_PREBUILT)

#Clock App
include $(CLEAR_VARS)
LOCAL_MODULE := GugelClock
LOCAL_SRC_FILES := app/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_OVERRIDES_PACKAGES := DeskClock OmniClock DeskClockGoogle GDeskClock
include $(BUILD_PREBUILT)

#Launcher App
include $(CLEAR_VARS)
LOCAL_MODULE := Lawnchair
LOCAL_SRC_FILES := app/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_PRIVILEGED_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_OVERRIDES_PACKAGES := Launcher3 Launcher3Go Launcher3QuickStep Launcher3QuickStepGo Quickstep
include $(BUILD_PREBUILT)
