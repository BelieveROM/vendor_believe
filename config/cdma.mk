# CDMA APN list
PRODUCT_COPY_FILES += \
    vendor/believe/proprietary/common/etc/apns-conf-cdma.xml:system/etc/apns-conf.xml

# GPS
PRODUCT_COPY_FILES += \
    vendor/believe/proprietary/common/etc/gps-cdma.conf:system/etc/gps.conf

PRODUCT_PROPERTY_OVERRIDES += \
    gsm.current.phone-type=2
