$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Add this line if your device is 64-bit
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Another common config inclusion
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# Replace a22xnsxx with your Device Name's Value.
# Replace samsung with your Brand's / Manufacturer's Value.
PRODUCT_COPY_FILES += device/samsung/a22xnsxx/prebuilt/zImage:kernel
# Fles under $(LOCAL_PATH)/recovery/root/ gets automatically copied into recovery
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*

PRODUCT_DEVICE := a22xnsxx
PRODUCT_NAME := omni_a22xnsxx
PRODUCT_BRAND := samsung
PRODUCT_MODEL := a22xnsxx
PRODUCT_MANUFACTURER := samsung

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Add fingerprint from Stock ROM build.prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    # These lines are from my device. You MUST Replace yours.
    BUILD_FINGERPRINT="samsung/a22xnsxx/a22x:11/RP1A.200720.012/A226BXXU2AUH1:user/release-keys" \
    PRIVATE_BUILD_DESC="a22xnsxx-user 11 RP1A.200720.012 A226BXXU2AUH1 release-keys"