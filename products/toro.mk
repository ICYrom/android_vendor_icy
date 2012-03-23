# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/toro/full_toro.mk)

# Inherit common product files.
$(call inherit-product, vendor/icy/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := icy_toro
PRODUCT_BRAND := google
PRODUCT_DEVICE := toro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=mysid BUILD_FINGERPRINT=google/mysid/toro:4.0.4/IMM30B/257829:user/release-keys PRIVATE_BUILD_DESC="mysid-user 4.0.4 IMM30B 257829 release-keys" BUILD_NUMBER=257829

# Inherit common build.prop overrides
-include vendor/icy/products/common_versions.mk

# Extra toro overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/icy/overlay/toro

# Copy toro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/icy/proprietary/tuna/app/MiFileExplorer_2.3.7.23_new_build_root_option_fixed.apk \
    vendor/icy/proprietary/tuna/app/Thinkfree.apk:system/app/Thinkfree.apk \
    vendor/icy/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/icy/proprietary/tuna/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3 \
    vendor/icy/proprietary/common/app/Microbes.apk:system/app/Microbes.apk \
    vendor/icy/proprietary/common/app/Wallet.apk:system/app/Wallet.apk \
    vendor/icy/proprietary/common/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    vendor/icy/proprietary/common/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar \
    vendor/icy/proprietary/common/lib/libfilterpack_facedetect.so:system/lib/libfilterpack_facedetect.so \
    vendor/icy/proprietary/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so \
    vendor/icy/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/icy/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd
    
# Inherit Face lock security blobs
-include vendor/icy/products/common_facelock.mk

# Inherit drm blobs
-include vendor/icy/products/common_drm.mk


