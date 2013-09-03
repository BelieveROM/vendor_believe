
# Inherit device configuration
$(call inherit-product, device/samsung/toroplus/full_toroplus.mk)
$(call inherit-product, vendor/believe/config/common.mk)
$(call inherit-product, vendor/believe/config/theme.mk)
$(call inherit-product, vendor/believe/config/cdma.mk)
$(call inherit-product, vendor/believe/config/common_versions.mk)
$(call inherit-product, vendor/believe/config/common_ledflash.mk)

# Inherit media effect blobs
-include vendor/believe/config/common_media_effects.mk

# Setup device specific product configuration.
PRODUCT_NAME := believe_toroplus
PRODUCT_DEVICE := toroplus
PRODUCT_BRAND := google
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung
PRODUCT_RESTRICT_VENDOR_FILES := false



PRODUCT_BUILD_PROP_OVERRIDES +=  PRODUCT_NAME=mysidspr BUILD_FINGERPRINT="samsung/mysidspr/toroplus:4.2.1/JOP40D/eng.ar.20121202.005722:userdebug/release-keys"
PRIVATE_BUILD_DESC="mysidspr-userdebug 4.2.1 JOP40D 005722 release-keys"



