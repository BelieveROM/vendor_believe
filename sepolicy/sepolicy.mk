#
# This policy configuration will be used by all products that
# inherit from SLIM
#

BOARD_SEPOLICY_DIRS := \
    vendor/believe/sepolicy

BOARD_SEPOLICY_UNION := \
    mac_permissions.xml
