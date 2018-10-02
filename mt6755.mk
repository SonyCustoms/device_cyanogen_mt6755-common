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
    init.mt6755.rc \
    init.mt6755.modem.rc \
    init.mt6755.usb.rc \
    ueventd.mt6755.rc

# Init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/init.target.rc:root/init.target.rc

# Recovery Ramdisk
PRODUCT_PACKAGES += \
    init.recovery.mt6755.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/etc/twrp.fstab:recovery/root/etc/twrp.fstab \
    $(LOCAL_PATH)/recovery/sbin/fuelgauged_static:recovery/root/sbin/fuelgauged_static

# WiFi
PRODUCT_PACKAGES += \
    dhcpcd.conf \
    hostapd \
    libwpa_client \
    wpa_supplicant \
    wpa_supplicant.conf \
    lib_driver_cmd_mt66xx

# Disable adb security
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	ro.mount.fs=EXT4 \
	ro.adb.secure=0 \
	ro.secure=0 \
	ro.allow.mock.location=0 \
	ro.debuggable=1 \
	persist.service.acm.enable=0 \
	camera.disable_zsl_mode=1 \
	persist.radio.lte.chip=0 \
	persist.sys.usb.config=mtp,adb

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.legacyencoder=0

PRODUCT_PACKAGES += \
    libstagefright_color_conversion

PRODUCT_PACKAGES += \
    YGPS \
    EngineerMode

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
	persist.radio.apn_delay=5000 \
	persist.sys.media.use-awesome=false \
	media.stagefright.use-awesome=false

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

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
	frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.vr.high_performance.xml:system/etc/permissions/android.hardware.vr.high_performance.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml

# Camera
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.manual_sensor.xml:system/etc/permissions/android.hardware.camera.manual_sensor.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml

# Media
PRODUCT_COPY_FILES += \
	frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml \
	$(LOCAL_PATH)/configs/media/media_profiles.xml:system/etc/media_profiles.xml \
	$(LOCAL_PATH)/configs/media/media_codecs_ffmpeg.xml:system/etc/media_codecs_ffmpeg.xml

PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:/system/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:/system/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:/system/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:/system/etc/usb_audio_policy_configuration.xml

# Display
PRODUCT_PACKAGES += \
    libion

# FM
PRODUCT_PACKAGES += \
    libfmjni \
    FMRadio

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/fmr/mt6627_fm_cust.cfg:system/etc/fmr/mt6627_fm_cust.cfg

# Sensor Calibration
PRODUCT_PACKAGES += \
    libem_sensor_jni

PRODUCT_PACKAGES += \
    Snap \
    mtkcamera_parameters

# GPS
$(call inherit-product, device/common/gps/gps_us_supl.mk)

PRODUCT_PACKAGES += \
    libcurl \
    libepos \
    gps.mt6755

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps/agps_profiles_conf2.xml:system/etc/agps_profiles_conf2.xml \
    $(LOCAL_PATH)/configs/gps/slp_conf:system/etc/slp_conf

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

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0 \
    ro.telephony.ril_class=MT6750 \
    ro.telephony.ril.config=fakeiccid \
    ro.com.android.mobiledata=false

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/telephony/spn-conf.xml:system/etc/spn-conf.xml

PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.android.mobiledata=false

# Charger Mode
PRODUCT_PACKAGES += \
    charger_res_images

# Available languages
PRODUCT_LOCALES := en_US en_GB ru_RU uk_UA

# Key Layouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayouts/ACCDET.kl:system/usr/keylayout/ACCDET.kl \
    $(LOCAL_PATH)/keylayouts/mtk-kpd.kl:system/usr/keylayout/mtk-kpd.kl

# Media
PRODUCT_COPY_FILES += \
	frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml \
	$(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml \
	$(LOCAL_PATH)/configs/media_codecs_ffmpeg.xml:system/etc/media_codecs_ffmpeg.xml

# Filesystem management tools
PRODUCT_PACKAGES += \
    e2fsck \
    fsck.f2fs \
    mkfs.f2fs \
    make_ext4fs

# Packages
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    NfcNci \
    Tag

# Configurations
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nfc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/configs/nfc/nfc.cfg:system/etc/nfc.cfg \
    $(LOCAL_PATH)/configs/nfc/nfcse.cfg:system/etc/nfcse.cfg \
    $(LOCAL_PATH)/configs/nfc/libnfc-nxp_RF.conf:system/vendor/libnfc-nxp_RF.conf \
    $(LOCAL_PATH)/configs/nfc/nfcee_access.xml:system/etc/nfcee_access.xml

# exFAT
PRODUCT_PACKAGES += \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat

# NTFS
PRODUCT_PACKAGES += \
    fsck.ntfs \
    mkfs.ntfs \
    mount.ntfs

# Telephony
SIM_COUNT := 2
PRODUCT_PROPERTY_OVERRIDES += ro.telephony.sim.count=$(SIM_COUNT)
PRODUCT_PROPERTY_OVERRIDES += persist.radio.default.sim=0
PRODUCT_PROPERTY_OVERRIDES += persist.radio.multisim.config=dsds

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/telephony/ecc_list.xml:system/etc/ecc_list.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wide-dhcpv6/dhcp6c.conf:system/etc/wide-dhcpv6/dhcp6c.conf \
    $(LOCAL_PATH)/configs/wide-dhcpv6/dhcp6c.script:system/etc/wide-dhcpv6/dhcp6c.script \
    $(LOCAL_PATH)/configs/wide-dhcpv6/dhcp6cctlkey:system/etc/wide-dhcpv6/dhcp6cctlkey \
    $(LOCAL_PATH)/configs/wide-dhcpv6/dhcp6cDNS.conf:system/etc/wide-dhcpv6/dhcp6cDNS.conf \
    $(LOCAL_PATH)/configs/wide-dhcpv6/dhcp6cPD.conf:system/etc/wide-dhcpv6/dhcp6cPD.conf \
    $(LOCAL_PATH)/configs/wide-dhcpv6/dhcp6cPD.script:system/etc/wide-dhcpv6/dhcp6cPD.script \
    $(LOCAL_PATH)/configs/wide-dhcpv6/dhcp6s.conf:system/etc/wide-dhcpv6/dhcp6s.conf

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal/thermal.conf:system/etc/.tp/thermal.conf \
    $(LOCAL_PATH)/configs/thermal/thermal.off.conf:system/etc/.tp/thermal.off.conf \
    $(LOCAL_PATH)/configs/thermal/ht120.mtc:system/etc/.tp/.htc120.mtc

# Graphics
MTK_GPU_VERSION := mali midgard r7p0

# IO Scheduler
PRODUCT_PROPERTY_OVERRIDES += \
    sys.io.scheduler=bfq

# Build proprietary bits when available
ifneq ($(MTKPATH),)
$(call inherit-product-if-exists, $(MTKPATH)/config/mt6755.mk)
endif
