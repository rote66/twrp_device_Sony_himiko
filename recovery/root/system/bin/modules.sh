#!/system/bin/sh

exec /system/bin/modprobe -a -d /sbin/modules/ \
    ldo_vibrator &
exec /system/bin/modprobe -a -d /sbin/modules/ \
    synaptics_tcm_i2c synaptics_tcm_core synaptics_tcm_touch \
    synaptics_tcm_device synaptics_tcm_testing synaptics_tcm_reflash \
    synaptics_tcm_recovery synaptics_tcm_diagnostics &
sleep 2
chown system system /sys/bus/platform/devices/synaptics_tcm.0/synaptics_tcm/reflash/config_id
chmod 0600 /sys/bus/platform/devices/synaptics_tcm.0/synaptics_tcm/reflash/config_id
restorecon /sys/bus/platform/devices/synaptics_tcm.0/synaptics_tcm/reflash/config_id
