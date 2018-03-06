# Copyright (c) 2018, Flowertome. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are
# met:
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above
#       copyright notice, this list of conditions and the following
#       disclaimer in the documentation and/or other materials provided
#       with the distribution.
#     * Neither the name of The Linux Foundation nor the names of its
#       contributors may be used to endorse or promote products derived
#       from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
# WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
# ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
# BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
# BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
# OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
# IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

$(call inherit-product-if-exists, vendor/nubia/nx569j/nx569j-vendor.mk)

# Include custom audio files
include device/nubia/nx569j/sounds/sm_audio.mk

DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# ANT+
PRODUCT_PACKAGES += \
    AntHalService \
    com.dsi.ant.antradio_library \
    libantradio

PRODUCT_COPY_FILES += \
    external/ant-wireless/antradio-library/com.dsi.ant.antradio_library.xml:system/etc/permissions/com.dsi.ant.antradio_library.xml

# Audio
PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio.primary.msm8952 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libaudioroute \
    libbthost_if \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libvolumelistener \
    tinymix

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/vendor/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    $(LOCAL_PATH)/audio/vendor/audio_output_policy.conf:system/vendor/etc/audio_output_policy.conf \
    $(LOCAL_PATH)/audio/audio_effects.conf:system/etc/audio_effects.conf \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/audio/audio_platform_info/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/audio_platform_info/audio_platform_info_extcodec.xml:system/etc/audio_platform_info_extcodec.xml \
    $(LOCAL_PATH)/audio/mixerpaths/mixer_paths.xml:system/etc/mixer_paths.xml \
    $(LOCAL_PATH)/audio/mixerpaths/mixer_paths_mtp.xml:system/etc/mixer_paths_mtp.xml \
    $(LOCAL_PATH)/audio/mixerpaths/mixer_paths_skuk.xml:system/etc/mixer_paths_skuk.xml \
    $(LOCAL_PATH)/audio/mixerpaths/mixer_paths_wcd9306.xml:system/etc/mixer_paths_wcd9306.xml \
    $(LOCAL_PATH)/audio/mixerpaths/mixer_paths_wcd9326.xml:system/etc/mixer_paths_wcd9326.xml \
    $(LOCAL_PATH)/audio/mixerpaths/mixer_paths_wcd9330.xml:system/etc/mixer_paths_wcd9330.xml \
    $(LOCAL_PATH)/audio/mixerpaths/mixer_paths_wcd9335.xml:system/etc/mixer_paths_wcd9335.xml \
    $(LOCAL_PATH)/audio/mixerpaths/mixer_paths_qrd_skuh.xml:system/etc/mixer_paths_qrd_skuh.xml \
    $(LOCAL_PATH)/audio/mixerpaths/mixer_paths_qrd_skui.xml:system/etc/mixer_paths_qrd_skui.xml \
    $(LOCAL_PATH)/audio/mixerpaths/mixer_paths_qrd_skum.xml:system/etc/mixer_paths_qrd_skum.xml \
    $(LOCAL_PATH)/audio/mixerpaths/mixer_paths_qrd_skun.xml:system/etc/mixer_paths_qrd_skun.xml \
    $(LOCAL_PATH)/audio/mixerpaths/mixer_paths_qrd_skuhf.xml:system/etc/mixer_paths_qrd_skuhf.xml \
    $(LOCAL_PATH)/audio/mixerpaths/mixer_paths_qrd_skun_cajon.xml:system/etc/mixer_paths_qrd_skun_cajon.xml

# Browser
#PRODUCT_PACKAGES += \
#    Browser

# Bootanimation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/shell/hcidump.sh:system/etc/hcidump.sh \
    $(LOCAL_PATH)/shell/hsic.control.bt.sh:system/etc/hsic.control.bt.sh \
    $(LOCAL_PATH)/shell/init.ath3k.bt.sh:system/etc/init.ath3k.bt.sh \
    $(LOCAL_PATH)/shell/init.crda.sh:system/etc/init.crda.sh \
    $(LOCAL_PATH)/shell/init.qcom.audio.sh:system/etc/init.qcom.audio.sh \
    $(LOCAL_PATH)/shell/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    $(LOCAL_PATH)/shell/init.qcom.debug.sh:system/etc/init.qcom.debug.sh \
    $(LOCAL_PATH)/shell/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh \
    $(LOCAL_PATH)/shell/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    $(LOCAL_PATH)/shell/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    $(LOCAL_PATH)/shell/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
    $(LOCAL_PATH)/shell/init.qcom.uicc.sh:system/etc/init.qcom.uicc.sh \
    $(LOCAL_PATH)/shell/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
    $(LOCAL_PATH)/shell/init.qcom.zram.sh:system/etc/init.qcom.zram.sh \
    $(LOCAL_PATH)/shell/init.qti.ims.sh:system/etc/init.qti.ims.sh \
    $(LOCAL_PATH)/shell/qca6234-service.sh:system/etc/qca6234-service.sh

# Camera
PRODUCT_PACKAGES += \
    org.codeaurora.camera

PRODUCT_PACKAGES += \
    libqservice \
    libqdutils \
    libqdMetaData

# CNE
PRODUCT_PACKAGES += \
    libcnefeatureconfig

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/cne/andsfCne.xml:system/etc/cne/andsfCne.xml \
    $(LOCAL_PATH)/cne/SwimConfig.xml:system/etc/cne/SwimConfig.xml

# ConfigPanel
PRODUCT_PACKAGES += \
    ConfigPanel

# unknown
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/unknown/aanc_tuning_mixer.txt:system/etc/aanc_tuning_mixer.txt \
    $(LOCAL_PATH)/unknown/capability.xml:system/etc/capability.xml \

# Doze
PRODUCT_PACKAGES += \
    Doze

# Device was launched with M
PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.first_api_level=23

# DataServices
PRODUCT_PACKAGES += \
    librmnetctl \
    datatop \
    sockev

# DSI
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/dsi/dsi_config.xml:system/etc/data/dsi_config.xml \
    $(LOCAL_PATH)/dsi/netmgr_config.xml:system/etc/data/netmgr_config.xml \
    $(LOCAL_PATH)/dsi/qmi_config.xml:system/etc/data/qmi_config.xml

# DRC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/drc/drc_cfg_5.1.txt:system/etc/drc/drc_cfg_5.1.txt \
    $(LOCAL_PATH)/drc/drc_cfg_AZ.txt:system/etc/drc/drc_cfg_AZ.txt

# DPM
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/dpm/dpm.conf:system/etc/dpm/dpm.conf \
    $(LOCAL_PATH)/dpm/nsrm/NsrmConfiguration.xml:system/etc/dpm/nsrm/NsrmConfiguration.xml

# Display
PRODUCT_PACKAGES += \
    copybit.msm8952 \
    gralloc.msm8952 \
    hwcomposer.msm8952 \
    memtrack.msm8952 \
    liboverlay

# For android_filesystem_config.h
PRODUCT_PACKAGES += \
    fs_config_files

# FMRadio
PRODUCT_PACKAGES += \
    FMRadio \
    libfmjni

# Fingerprintd
PRODUCT_PACKAGES += \
    fingerprintd

# GPS
PRODUCT_PACKAGES += \
    gps.msm8952

PRODUCT_PACKAGES += \
    libcurl

# IPACM
PRODUCT_PACKAGES += \
    ipacm \
    libipanat

# IPv6
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc

# IRQ
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/thermal-engine/msm_irqbalance.conf:system/vendor/etc/msm_irqbalance.conf \
    $(LOCAL_PATH)/thermal-engine/msm_irqbalance_little_big.conf:system/vendor/etc/msm_irqbalance_little_big.conf

# IRSC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/IPC/sec_config:system/etc/sec_config

# IMS
PRODUCT_PACKAGES += \
    ims-common

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    $(LOCAL_PATH)/keylayout/synaptics_dsx.kl:system/usr/keylayout/synaptics_dsx.kl \
    $(LOCAL_PATH)/keylayout/ft5x06_ts.kl:system/usr/keylayout/ft5x06_ts.kl \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/synaptics_rmi4_i2c.kl:system/usr/keylayout/synaptics_rmi4_i2c.kl \
    $(LOCAL_PATH)/keylayout/input_proxy.idc:system/usr/idc/input_proxy.idc

# Keymaster
#PRODUCT_PACKAGES += \
#    keystore.msm8952

# Lights
PRODUCT_PACKAGES += \
    lights.msm8952

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/mediacodecs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/mediacodecs/media_codecs_8956_v1.xml:system/etc/media_codecs_8956_v1.xml \
    $(LOCAL_PATH)/mediacodecs/media_codecs_8956.xml:system/etc/media_codecs_8956.xml \
    $(LOCAL_PATH)/mediacodecs/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/mediacodecs/media_codecs_performance_8956.xml:system/etc/media_codecs_performance_8956.xml \
    $(LOCAL_PATH)/mediacodecs/media_codecs_performance_8956_v1.xml:system/etc/media_codecs_performance_8956_v1.xml \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/mediaprofiles/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/mediaprofiles/media_profiles_8956.xml:system/etc/media_profiles_8956.xml

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# NFC
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    NfcNci \
    Tag

PRODUCT_COPY_FILES += \
    frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/nfc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/nfc/libnfc-brcm-20797b00.conf:system/etc/libnfc-brcm-20797b00.conf \
    $(LOCAL_PATH)/nfc/nfcee_access.xml:system/etc/nfcee_access.xml \

# OpenGL
PRODUCT_PACKAGES += \
    libGLES_android

# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxSwVencHevc \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw

# Power
PRODUCT_PACKAGES += \
    power.msm8952

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:system/etc/permissions/android.hardware.camera.full.xml\
    frameworks/native/data/etc/android.hardware.camera.raw.xml:system/etc/permissions/android.hardware.camera.raw.xml\
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.software.webview.xml:system/etc/permissions/android.software.webview.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Qualcomm
PRODUCT_PACKAGES += \
    libtinyxml \
    libxml2

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.bt.config.service.rc \
    init.class_main.sh \
    init.nubia.extension.rc \
    init.nubia.usb.rc \
    init.project.rc \
    init.qcom.bms.sh \
    init.qcom.bt.sh \
    init.qcom.class_core.sh \
    init.qcom.early_boot.sh \
    init.qcom.rc \
    init.qcom.sh \
    init.qcom.usb.rc \
    init.recovery.qcom.rc \
    init.target.rc \
    ueventd.qcom.rc

PRODUCT_PACKAGES += \
    qcrypto_module.ko \
    qdrbg_module.ko

# RCS
PRODUCT_PACKAGES += \
    rcscommon \
    rcs_service_aidl \
    rcs_service_api

# SSL Compat
PRODUCT_PACKAGES += \
    libboringssl-compat

# Stlport
PRODUCT_PACKAGES += \
    libstlport

# Sensors
PRODUCT_PACKAGES += \
    sensors.msm8952

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/sensors/hals.conf:system/etc/sensors/hals.conf \
    $(LOCAL_PATH)/sensors/sensor_def_qcomdev.conf:system/etc/sensors/sensor_def_qcomdev.conf

# SRS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/srs/dts.lic:system/etc/srs/dts.lic \
    $(LOCAL_PATH)/srs/srs_processing.cfg:system/etc/srs/srs_processing.cfg

# surround
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/surround/surround_sound_rec_5.1.cfg:system/etc/surround_sound_3mic/surround_sound_rec_5.1.cfg \
    $(LOCAL_PATH)/surround/surround_sound_rec_AZ.cfg:system/etc/surround_sound_3mic/surround_sound_rec_AZ.cfg

# Signture
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/signature/cacert_location.pem:system/etc/cacert_location.pem \
    $(LOCAL_PATH)/signature/xtra_root_cert.pem:system/etc/xtra_root_cert.pem

# Soundtrigger
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/soundtrigger/sound_trigger_mixer_paths.xml:system/etc/sound_trigger_mixer_paths.xml \
    $(LOCAL_PATH)/audio/soundtrigger/sound_trigger_mixer_paths_wcd9306.xml:system/etc/sound_trigger_mixer_paths_wcd9306.xml \
    $(LOCAL_PATH)/audio/soundtrigger/sound_trigger_mixer_paths_wcd9330.xml:system/etc/sound_trigger_mixer_paths_wcd9330.xml \
    $(LOCAL_PATH)/audio/soundtrigger/sound_trigger_mixer_paths_wcd9335.xml:system/etc/sound_trigger_mixer_paths_wcd9335.xml \
    $(LOCAL_PATH)/audio/soundtrigger/sound_trigger_platform_info.xml:system/etc/sound_trigger_platform_info.xml

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/thermal-engine/thermal-mode-00-01.conf:system/etc/.tp/.thermal-mode-00-01.conf \
    $(LOCAL_PATH)/thermal-engine/thermal-mode-00-02.conf:system/etc/.tp/.thermal-mode-00-02.conf \
    $(LOCAL_PATH)/thermal-engine/thermal-mode-00-03.conf:system/etc/.tp/.thermal-mode-00-03.conf \
    $(LOCAL_PATH)/thermal-engine/thermal-mode-00-04.conf:system/etc/.tp/.thermal-mode-00-04.conf

# Telephony
PRODUCT_PACKAGES += \
    rild \
    libreference-ril \
    librilutils \
    libril

PRODUCT_PACKAGES += \
    ims-ext-common

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/cdma/cdma_call_conf.xml:system/etc/cdma_call_conf.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/telephony/config.xml:system/etc/telephony/config.xml

# USB & OTG
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb
    persist.sys.isUsbOtgEnabled=true

# WCNSS
PRODUCT_PACKAGES += \
    WCNSS_qcom_cfg.ini \
    WCNSS_cfg.dat

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wlan/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

PRODUCT_PACKAGES += \
    libwifi-hal-qcom

PRODUCT_PACKAGES += \
    wcnss_service

# WDF
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wfd/wfdconfig.xml:system/etc/wfdconfig.xml \
    $(LOCAL_PATH)/wfd/wfdconfig640_480.xml:system/etc/wfdconfig640_480.xml \
    $(LOCAL_PATH)/wfd/wfdconfig800_480.xml:system/etc/wfdconfig800_480.xml \
    $(LOCAL_PATH)/wfd/wfdconfig960_540.xml:system/etc/wfdconfig960_540.xml \
    $(LOCAL_PATH)/wfd/wfdconfig1280_720.xml:system/etc/wfdconfig1280_720.xml \
    $(LOCAL_PATH)/wfd/wfdconfigsink.xml:system/etc/wfdconfigsink.xml

# Wifi
PRODUCT_PACKAGES += \
    libqsap_sdk \
    libQWiFiSoftApCfg \
    libwpa_client

PRODUCT_PACKAGES += \
    dhcpcd \
    dhcpcd.conf \
    libdhcpcd

PRODUCT_PACKAGES += \
    hostapd.accept \
    hostapd.deny \
    hostapd_default.conf \
    hostapd \
    hostapd_cil \
    wpa_supplicant

PRODUCT_PACKAGES += \
    p2p_supplicant_overlay.conf \
    wpa_supplicant_overlay.conf

PRODUCT_BOOT_JARS += \
    com.qti.dpmframework \
    com.qti.location.sdk \
    dpmapi \
    WfdCommon \
    qcmediaplayer \
    ifaa_fingerprint \
    telephony-static-config \
    ims-ext-common

PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

$(call inherit-product, frameworks/native/build/phone-xxhdpi-3072-dalvik-heap.mk)
$(call inherit-product, frameworks/native/build/phone-xxhdpi-3072-hwui-memory.mk)
