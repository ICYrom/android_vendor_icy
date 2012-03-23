# Inherit AOSP device configuration for maguro.
$(call inherit-product, device/samsung/maguro/full_maguro.mk)

# Inherit common product files.
$(call inherit-product, vendor/icy/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := icy_maguro
PRODUCT_BRAND := google
PRODUCT_DEVICE := maguro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=yakju BUILD_FINGERPRINT=google/yakju/maguro:4.0.2/ICL53F/235179:user/release-keys PRIVATE_BUILD_DESC="yakju-user 4.0.2 ICL53F 235179 release-keys" BUILD_NUMBER=235179

# Inherit common build.prop overrides
-include vendor/icy/products/common_versions.mk

# Extra maguro overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/icy/overlay/maguro

# Copy maguro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/icy/proprietary/tuna/app/Thinkfree.apk:system/app/Thinkfree.apk \
    vendor/icy/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/icy/proprietary/tuna/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3 \
    vendor/icy/proprietary/common/app/FileManager.apk:system/app/FileManager.apk \
    vendor/icy/proprietary/common/app/Microbes.apk:system/app/Microbes.apk \
    vendor/icy/proprietary/common/app/Wallet.apk:system/app/Wallet.apk \
    vendor/icy/proprietary/common/app/TouchWiz30LauncherICS.apk:system/app/TouchWiz30LauncherICS.apk \
    vendor/icy/proprietary/common/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    vendor/icy/proprietary/common/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar \
    vendor/icy/proprietary/common/lib/libfilterpack_facedetect.so:system/lib/libfilterpack_facedetect.so \
    vendor/icy/proprietary/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so \
    vendor/icy/proprietary/common/lib/libglcanvas.so:system/lib/libglcanvas.so \
    vendor/icy/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/icy/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Inherit Face lock security blobs
-include vendor/icy/products/common_facelock.mk

# Inherit drm blobs
-include vendor/icy/products/common_drm.mk

