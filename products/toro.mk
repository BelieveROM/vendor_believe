# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/toro/full_toro.mk)

# Inherit common product files.
$(call inherit-product, vendor/believe/config/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := believe_toro
PRODUCT_BRAND := google
PRODUCT_DEVICE := toro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_NUMBER=573038 \
    BUILD_ID=ICL53F \
    PRODUCT_NAME=mysid \
    BUILD_DISPLAY_ID=JSS15J \
    BUILD_VERSION_TAGS=release-keys \
    USER=android-build \
    PRIVATE_BUILD_DESC="mysid-user 4.2.2 JDQ39 573038 release-keys" \
    BUILD_FINGERPRINT="google/mysid/toro:4.2.2/JDQ39/573038:user/release-keys"


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
