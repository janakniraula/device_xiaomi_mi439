# Copyright (C) 2022 Paranoid Android
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from mi439 device configuration.
$(call inherit-product, device/xiaomi/mi439/device.mk)

# Inherit from common cherish configuration
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

PRODUCT_NAME := cherish_mi439
PRODUCT_DEVICE := mi439
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI SDM439
PRODUCT_MANUFACTURER := Xiaomi

# Boot animation resolution.
TARGET_BOOT_ANIMATION_RES := 720

#Extra Stuffs
TARGET_USES_MINI_GAPPS := true
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.cherish.maintainer=HEISENBERG
CHERISH_BUILD_TYPE := UNOFFICIAL
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_INCLUDE_PIXEL_CHARGER := true
TARGET_ENABLE_BLUR := true
#USE_GRAPHENEOS_CAM := false
USE_QUICKPIC := false

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="olive-user 10 QKQ1.191014.001 V12.5.1.0.QCNMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "Xiaomi/olive/olive:10/QKQ1.191014.001/V12.5.1.0.QCNMIXM:user/release-keys"
