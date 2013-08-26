# Inherit AOSP device configuration for maguro.
$(call inherit-product, device/samsung/maguro/full_maguro.mk)

# Inherit torch settings
$(call inherit-product, vendor/believe/config/common_ledflash.mk)

# Inherit common product files.
$(call inherit-product, vendor/believe/config/common.mk)
$(call inherit-product, vendor/believe/config/theme.mk)

# Setup device specific product configuration.
PRODUCT_NAME := believe_maguro
PRODUCT_BRAND := google
PRODUCT_DEVICE := maguro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=yakju BUILD_FINGERPRINT="google/yakju/maguro:4.3/JWR66V/737497:user/release-keys" PRIVATE_BUILD_DESC="yakju-user 4.3 JWR66V 737497 release-keys"

# Inherit media effect blobs
-include vendor/believe/config/common_media_effects.mk
