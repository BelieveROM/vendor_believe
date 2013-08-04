# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/toro/full_toro.mk)

# Inherit common product files.
$(call inherit-product, vendor/believe/config/common.mk)
$(call inherit-product, vendor/believe/config/theme.mk)

# Setup device specific product configuration.
PRODUCT_NAME := believe_toro
PRODUCT_BRAND := google
PRODUCT_DEVICE := toro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

# Setup device specific product configuration.
PRODUCT_NAME := believe_toro
PRODUCT_BRAND := google
PRODUCT_DEVICE := toro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=mysid BUILD_ID=JWR66V BUILD_FINGERPRINT="google/mysid/toro:4.3/JWR66V/573038:user/release-keys" PRIVATE_BUILD_DESC="mysid-user 4.3 JWR66V 573038 release-keys" BUILD_NUMBER=573038

# Inherit common build.prop overrides
-include vendor/believe/config/common_versions.mk

# Inherit CDMA common stuff
$(call inherit-product, vendor/believe/config/cdma.mk)

# Copy vzw login 
PRODUCT_COPY_FILES +=  \
    vendor/believe/proprietary/toro/app/VerizonLogin.apk:system/app/VerizonLogin.apk \
    vendor/believe/proprietary/toro/lib/libmotricity.so:system/lib/libmotricity.so \
    vendor/believe/proprietary/toro/app/VerizonSSO.apk:system/app/VerizonSSO.apk

# Inherit media effect blobs
-include vendor/believe/config/common_media_effects.mk
