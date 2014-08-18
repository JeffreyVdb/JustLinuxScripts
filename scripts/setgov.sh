#!/bin/bash
if [ -z "$1" ]; then
    exit 1
fi

tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor > /dev/null <<< "$1"
