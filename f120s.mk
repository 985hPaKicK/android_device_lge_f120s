$(call inherit-product, build/target/product/full.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product-if-exists, vendor/lge/f120s/f120s-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_COPY_FILES += device/common/gps/gps.conf_AS:system/etc/gps.conf

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/init.cayman_skt_kr.rc:root/init.cayman_skt_kr.rc \
    $(LOCAL_PATH)/ramdisk/init.cayman_skt_kr.usb.rc:root/init.cayman_skt_kr.usb.rc \
    $(LOCAL_PATH)/ramdisk/ueventd.cayman_skt_kr.rc:root/ueventd.cayman_skt_kr.rc \
    $(LOCAL_PATH)/ramdisk/initlogo.rle:root/initlogo.rle

# Scripts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/init.qcom.sh:root/init.qcom.sh \
    $(LOCAL_PATH)/prebuilt/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    $(LOCAL_PATH)/prebuilt/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh \
    $(LOCAL_PATH)/prebuilt/init.qcom.mdm_links.sh:system/etc/init.qcom.mdm_links.sh

# Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/init.qcom.bt.sh:system/bin/init.qcom.bt.sh

# Configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/audio_effects.conf:system/etc/audio_effects.conf \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/atcmd_virtual_kbd.kl:system/usr/keylayout/atcmd_virtual_kbd.kl \
    $(LOCAL_PATH)/configs/ats_input.kl:system/usr/keylayout/ats_input.kl \
    $(LOCAL_PATH)/configs/i_skt-keypad.kl:system/usr/keylayout/i_skt-keypad.kl \
    $(LOCAL_PATH)/configs/pmic8xxx_pwrkey.kl:system/usr/keylayout/pmic8xxx_pwrkey.kl \
    $(LOCAL_PATH)/configs/touch_dev.kl:system/usr/keylayout/touch_dev.kl \
    $(LOCAL_PATH)/configs/touch_dev.idc:system/usr/idc/touch_dev.idc \
    $(LOCAL_PATH)/configs/apns-conf.xml:system/etc/apns-conf.xml \
    $(LOCAL_PATH)/configs/thermald.conf:system/etc/thermald.conf

# MSM8660 firmware
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/firmware/a225p5_pm4.fw:system/etc/firmware/a225p5_pm4.fw \
    $(LOCAL_PATH)/firmware/a225_pfp.fw:system/etc/firmware/a225_pfp.fw \
    $(LOCAL_PATH)/firmware/a225_pm4.fw:system/etc/firmware/a225_pm4.fw \
    $(LOCAL_PATH)/firmware/a225_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    $(LOCAL_PATH)/firmware/a225_pm4.fw:system/etc/firmware/yamato_pm4.fw \
    $(LOCAL_PATH)/firmware/vidc_1080p.fw:system/etc/firmware/vidc_1080p.fw \
    $(LOCAL_PATH)/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
    $(LOCAL_PATH)/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw

# Jellybean Adreno libs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/jb_libs/lib/libc2d2_z180.so:/system/lib/libc2d2_z180.so \
    $(LOCAL_PATH)/jb_libs/lib/libC2D2.so:/system/lib/libC2D2.so \
    $(LOCAL_PATH)/jb_libs/lib/libgsl.so:/system/lib/libgsl.so \
    $(LOCAL_PATH)/jb_libs/lib/libOpenVG.so:/system/lib/libOpenVG.so \
    $(LOCAL_PATH)/jb_libs/lib/libsc-a2xx.so:/system/lib/libsc-a2xx.so \
    $(LOCAL_PATH)/jb_libs/egl/eglsubAndroid.so:/system/lib/egl/eglsubAndroid.so \
    $(LOCAL_PATH)/jb_libs/egl/libEGL_adreno200.so:/system/lib/egl/libEGL_adreno200.so \
    $(LOCAL_PATH)/jb_libs/egl/libGLESv1_CM_adreno200.so:/system/lib/egl/libGLESv1_CM_adreno200.so \
    $(LOCAL_PATH)/jb_libs/egl/libGLESv2_adreno200.so:/system/lib/egl/libGLESv2_adreno200.so \
    $(LOCAL_PATH)/jb_libs/egl/libGLESv2S3D_adreno200.so:/system/lib/egl/libGLESv2S3D_adreno200.so \
    $(LOCAL_PATH)/jb_libs/egl/libq3dtools_adreno200.so:/system/lib/egl/libq3dtools_adreno200.so

# bcmdhd firmware
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/firmware/fw_bcmdhd.bin:system/etc/firmware/fw_bcmdhd.bin \
    $(LOCAL_PATH)/firmware/fw_bcmdhd_apsta.bin:system/etc/firmware/fw_bcmdhd_apsta.bin \
    $(LOCAL_PATH)/firmware/fw_bcmdhd_mfgtest.bin:system/etc/firmware/fw_bcmdhd_mfgtest.bin \
    $(LOCAL_PATH)/firmware/fw_bcmdhd_p2p.bin:system/etc/firmware/fw_bcmdhd_p2p.bin

# DSPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/firmware/dsps_fluid.b00:system/etc/firmware/dsps_fluid.b00 \
    $(LOCAL_PATH)/firmware/dsps_fluid.b01:system/etc/firmware/dsps_fluid.b01 \
    $(LOCAL_PATH)/firmware/dsps_fluid.b02:system/etc/firmware/dsps_fluid.b02 \
    $(LOCAL_PATH)/firmware/dsps_fluid.b03:system/etc/firmware/dsps_fluid.b03 \
    $(LOCAL_PATH)/firmware/dsps_fluid.mdt:system/etc/firmware/dsps_fluid.mdt

# WiFi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/configs/bcmdhd.cal:system/etc/wifi/bcmdhd.cal

# Vold
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/vold.fstab:system/etc/vold.fstab

# KoreanIME
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/KoreanIME.apk:/system/app/LatinIME.apk \
    $(LOCAL_PATH)/prebuilt/libjni_koreanime.so:/system/lib/libjni_koreanime.so

# RootExplorer
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/RootBrowser.apk:/system/app/RootBrowser.apk \
    $(LOCAL_PATH)/prebuilt/.root_browser:/system/etc/.root_browser

# Camera lib
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/camera.msm8660.so:/system/lib/hw/camera.msm8660.so

# Permission files
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
PRODUCT_LOCALES += ko_KR hdpi


# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.msm8660 \
    audio_policy.msm8660 \
    libaudioutils

# Graphics
PRODUCT_PACKAGES += \
    copybit.msm8660 \
    gralloc.msm8660 \
    hwcomposer.msm8660 \
    libgenlock \
    libmemalloc \
    liboverlay \
    libQcomUI \
    libtilerenderer

# OMX
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    libI420colorconvert \
    libmm-omxcore \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libstagefrighthw

# HDMI
PRODUCT_PACKAGES += \
    hdmid

# Torch
PRODUCT_PACKAGES += \
    Torch

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# Bluetooth
PRODUCT_PACKAGES += \
    brcm_patchram_plus

# GPS
PRODUCT_PACKAGES += \
    gps.cayman_skt_kr

# NFC
PRODUCT_PACKAGES += \
    nfc.msm8660 \
    libnfc \
    libnfc_jni \
    Nfc \
    Tag

# Bluetooth
PRODUCT_PACKAGES += \
    hcitool \
    hciconfig \
    hwaddrs

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=1330052594
