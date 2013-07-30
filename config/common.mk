# Generic product
PRODUCT_NAME := believe
PRODUCT_BRAND := believe
PRODUCT_DEVICE := generic

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/believe/overlay/common

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.setupwizard.enterprise_mode=1
    
# standard believe packages 
PRODUCT_PACKAGES += \
    DashClock \
    Development \
    Apollo

# SIM Toolkit
PRODUCT_PACKAGES += \
    Stk

# T-Mobile theme engine
#PRODUCT_PACKAGES += \
#       ThemeManager \
#       ThemeChooser \
#       com.tmobile.themes

# init.d support
PRODUCT_COPY_FILES += \
        vendor/believe/prebuilt/common/bin/sysinit:system/bin/sysinit

# Propiortary applications
PRODUCT_COPY_FILES += \
    vendor/believe/prebuilt/common/app/ApexLauncher.apk:system/app/ApexLauncher.apk
    

# Sounds and bootani
PRODUCT_COPY_FILES += \
    vendor/believe/prebuilt/common/media/audio/ringtones/freebird.ogg:system/media/audio/ringtones/freebird.ogg \
    vendor/believe/prebuilt/common/media/audio/ringtones/DSB.ogg:system/media/audio/ringtones/DSB.ogg 
    


PRODUCT_COPY_FILES += \
       vendor/believe/proprietary/common/etc/permissions/com.tmobile.software.themes.xml:system/etc/permissions/com.tmobile.software.themes.xml

# Common Keyboard w/ Gestures
PRODUCT_COPY_FILES += \
    vendor/believe/proprietary/common/app/LatinImeGoogle.apk:system/app/LatinImeGoogle.apk \
    vendor/believe/proprietary/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so
 
# Copy bootanimation
PRODUCT_COPY_FILES += \
    

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml
