LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := tinyalsa_library
LOCAL_SRC_FILES := src/mixer.c src/pcm.c src/pcm_plugin.c src/limits.c
LOCAL_C_INCLUDES := include
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := tinycap
LOCAL_SRC_FILES := utils/tinycap.c
LOCAL_STATIC_LIBRARIES := tinyalsa_library
LOCAL_C_INCLUDES := include
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE := tinyplay
LOCAL_SRC_FILES := utils/tinyplay.c
LOCAL_STATIC_LIBRARIES := tinyalsa_library
LOCAL_C_INCLUDES := include
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE := tinymix
LOCAL_SRC_FILES := utils/tinymix.c
LOCAL_STATIC_LIBRARIES := tinyalsa_library
LOCAL_C_INCLUDES := include
include $(BUILD_EXECUTABLE)
