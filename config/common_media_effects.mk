# Blobs necessary for media effects
PRODUCT_COPY_FILES +=  \
    vendor/believe/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/believe/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

$(call inherit-product-if-exists, frameworks/base/data/videos/VideoPackage2.mk)

