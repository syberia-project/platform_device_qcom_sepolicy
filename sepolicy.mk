# all socs above sdm845 or sdm710
BOARD_PLAT_PUBLIC_SEPOLICY_DIR += \
    device/qcom/sepolicy_q/generic/public \
    device/qcom/sepolicy_q/qva/public

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/qcom/sepolicy_q/generic/private \
    device/qcom/sepolicy_q/qva/private

# sepolicy rules for product images
PRODUCT_PUBLIC_SEPOLICY_DIRS := \
     device/qcom/sepolicy_q/product/public

PRODUCT_PRIVATE_SEPOLICY_DIRS := \
      device/qcom/sepolicy_q/product/private

BOARD_SEPOLICY_DIRS += \
    device/qcom/sepolicy_q/generic/vendor/common \
    device/qcom/sepolicy_q/qva/vendor/common/sysmonapp \
    device/qcom/sepolicy_q/qva/vendor/ssg \
    device/qcom/sepolicy_q/timeservice \
    device/qcom/sepolicy_q/generic/vendor/timeservice \
    device/qcom/sepolicy_q/qva/vendor/common \
    device/qcom/sepolicy_q/generic/vendor/$(TARGET_BOARD_PLATFORM) \
    device/qcom/sepolicy_q/qva/vendor/$(TARGET_BOARD_PLATFORM)
    ifneq (,$(filter userdebug eng, $(TARGET_BUILD_VARIANT)))
         BOARD_SEPOLICY_DIRS += \
              device/qcom/sepolicy_q/generic/vendor/test \
              device/qcom/sepolicy_q/qva/vendor/test
    endif

