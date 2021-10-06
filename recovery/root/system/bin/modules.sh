#!/system/bin/sh

#Synaptics touchscreen
insmod /sbin/modules/synaptics_tcm_i2c.ko
insmod /sbin/modules/synaptics_tcm_core.ko
insmod /sbin/modules/synaptics_tcm_touch.ko
insmod /sbin/modules/synaptics_tcm_device.ko
insmod /sbin/modules/synaptics_tcm_testing.ko
insmod /sbin/modules/synaptics_tcm_reflash.ko
insmod /sbin/modules/synaptics_tcm_recovery.ko
insmod /sbin/modules/synaptics_tcm_diagnostics.ko

insmod /sbin/modules/synaptics_tcm_core.ko

#vibrator
insmod /sbin/modules/ldo_vibrator.ko

#bu520
insmod /sbin/modules/bu520x1nvx.ko
