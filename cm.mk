## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := OptimusTAG

TARGET_BOOTANIMATION_NAME := vertical-480x800

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/f120s/f120s.mk)

# Device naming
PRODUCT_DEVICE := f120s
PRODUCT_NAME := cm_f120s
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-F120S
PRODUCT_MANUFACTURER := LGE
PRODUCT_DEFAULT_LANGUAGE := ko
PRODUCT_DEFAULT_REGION := KR

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=cayman_skt_kr BUILD_FINGERPRINT=LGE/cayman_skt_kr/cayman:4.0.4/IMM76D/LG-F120S-V20e.47f226f5:user/release-keys PRIVATE_BUILD_DESC="cayman_skt_kr-user 4.0.4 IMM76D 47f226f4 release-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch
