# GSM APN list
PRODUCT_COPY_FILES += \
    vendor/believe/proprietary/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# GPS
PRODUCT_COPY_FILES += \
    vendor/believe/proprietary/common/etc/gps.conf:system/etc/gps.conf

PRODUCT_PROPERTY_OVERRIDES += \
    gsm.current.phone-type=1

