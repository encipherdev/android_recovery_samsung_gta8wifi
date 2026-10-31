#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2026 encipherdev
#
# SPDX-License-Identifier: Apache-2.0
#

# OrangeFox build environment variables
export FOX_BUILD_TYPE="Unofficial"
export FOX_MAINTAINER_PATCH_VERSION=1
export OF_MAINTAINER="encipher"

# Display & Touch
export OF_SCREEN_H=1920
export OF_STATUS_H=80
export OF_STATUS_INDENT_LEFT=48
export OF_STATUS_INDENT_RIGHT=48
export OF_USE_GREEN_LED=0
export OF_ALLOW_DISABLE_NAVBAR=0
export OF_FLASHLIGHT_ENABLE=0

# Backup & Storage
export OF_QUICK_BACKUP_LIST="/boot;/data;/super;"
export OF_DONT_PATCH_ENCRYPTED_DEVICE=1
export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
export OF_DEVICE_WITHOUT_MTP=0
export OF_USE_HEX_FONT=1
export OF_USE_MAGISKBOOT=1
export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1
export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
