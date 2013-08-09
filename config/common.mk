# Generic product
PRODUCT_NAME := believe
PRODUCT_BRAND := believe
PRODUCT_DEVICE := generic

SUPERUSER_EMBEDDED := true
SUPERUSER_PACKAGE_PREFIX := com.android.settings.cyanogenmod.superuser

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/believe/overlay/common

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.setupwizard.enterprise_mode=1 \
    ro.modversion=Beta-1
    
# standard believe packages 
PRODUCT_PACKAGES += \
    DashClock \
    Development \
    Apollo \
    Focal \
    LatinIME \
    BelieveWallPapers 

#CM apps - Thanks to the great team over at CyanogenMod we have these awesome apps :)
PRODUCT_PACKAGES += \
    DSPManager \
    libcyanogen-dsp \
    audio_effects.conf \
    Superuser \
    su \
    CMFileManager

# SIM Toolkit
PRODUCT_PACKAGES += \
    Stk

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# init.d support
PRODUCT_COPY_FILES += \
        vendor/believe/prebuilt/common/bin/sysinit:system/bin/sysinit \
        vendor/believe/prebuilt/common/etc/init.br.rc:root/init.br.rc
        
# userinit support
PRODUCT_COPY_FILES += \
    vendor/believe/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit


# Propiortary applications
PRODUCT_COPY_FILES += \
    vendor/believe/prebuilt/common/app/ApexLauncher.apk:system/app/ApexLauncher.apk
    

# Sounds and bootani
PRODUCT_COPY_FILES += \
    vendor/believe/prebuilt/common/media/audio/ringtones/freebird.ogg:system/media/audio/ringtones/freebird.ogg \
    vendor/believe/prebuilt/common/media/audio/ringtones/DSB.ogg:system/media/audio/ringtones/DSB.ogg 
    

# Common Keyboard w/ Gestures
PRODUCT_COPY_FILES += \
    vendor/believe/prebuilt/common/lib/libjni_latinime.so:system/lib/libjni_latinime.so
 
# Copy bootanimation
PRODUCT_COPY_FILES += \

# Audio Config for DSPManager
PRODUCT_COPY_FILES += \
    vendor/believe/prebuilt/common/vendor/etc/audio_effects.conf:system/vendor/etc/audio_effects.conf
    

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml
