
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


PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mysidspr BUILD_DISPLAY_ID=JSS15Q BUILD_FINGERPRINT="samsung/mysidspr/toroplus:4.3/JSS15Q/737497:user/release-keys" PRIVATE_BUILD_DESC="mysidspr-user 4.3 JSS15Q 737497 release-keys"
PRIVATE_BUILD_DESC="mysidspr-userdebug 4.2.1 JOP40D 005722 release-keys"



