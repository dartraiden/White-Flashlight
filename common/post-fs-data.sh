#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in post-fs-data mode
busybox echo "200" > /sys/devices/soc/qpnp-flash-led-25/leds/led:torch_0/max_brightness
busybox echo "200" > /sys/class/leds/led:torch_0/brightness
busybox echo "0" > /sys/devices/soc/qpnp-flash-led-25/leds/led:torch_1/max_brightness
busybox echo "0" > /sys/class/leds/led:torch_1/brightness
