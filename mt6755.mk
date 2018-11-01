#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Root
PRODUCT_PACKAGES += \
    fstab.mt6755 \
    init.connectivity.rc \
    init.epdg.rc \
    init.mt6755.modem.rc \
    init.mt6755.rc \
    init.mt6755.usb.rc \
    init.project.rc \
    init.rilproxy.rc \
    init.usb.configfs.rc \
    init.usb.rc \
    init.volte.rc \
    init.wfca.rc \
    ueventd.mt6755.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/etc/twrp.fstab:recovery/root/etc/twrp.fstab \
    $(LOCAL_PATH)/recovery/sbin/fuelgauged_static:recovery/root/sbin/fuelgauged_static

# ADB Debugging
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.adb.secure=0 \
    ro.debuggable=1 \
    ro.secure=0 \
    persist.logd.logpersistd=logcatd

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    audio_policy.default \
    libaudio-resampler \
    libtinyalsa \
    libaudiopolicymanagerdefault \
    libtinycompress \
    libtinymix \
    libtinyxml

# Display
PRODUCT_PACKAGES += \
    libion

# FM
PRODUCT_PACKAGES += \
    libfmjni \
    FMRadio

# GPS
$(call inherit-product, device/common/gps/gps_us_supl.mk)

PRODUCT_PACKAGES += \
    libcurl \
    libepos \
    gps.mt6755

#mtk
PRODUCT_PACKAGES += \
    EngineerMode \
    YGPS

# Mediatek platform
PRODUCT_PACKAGES += \
   libmtk_symbols

# Power
PRODUCT_PACKAGES += \
    power.default \
    power.mt6755

# Radio dependencies
PRODUCT_PACKAGES += \
    muxreport \
    terservice

# Wifi
PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    wpa_supplicant \

# Charger Mode
PRODUCT_PACKAGES += \
    charger_res_images

ifneq ($(TARGET_BUILD_VARIANT), eng)
# Mediatek logging service
PRODUCT_PACKAGES += \
    mobile_log_d \
    netdiag \
    tcpdump
endif

# Key Layouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayouts/ACCDET.kl:system/usr/keylayout/ACCDET.kl \
    $(LOCAL_PATH)/keylayouts/mtk-kpd.kl:system/usr/keylayout/mtk-kpd.kl

# Camera
PRODUCT_PACKAGES += \
    Snap

# Media
PRODUCT_COPY_FILES += \
	frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml \

# Build proprietary bits when available
ifneq ($(MTKPATH),)
$(call inherit-product-if-exists, $(MTKPATH)/config/mt6755.mk)
endif
