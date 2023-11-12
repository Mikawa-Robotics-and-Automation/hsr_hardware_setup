#!/bin/bash

if [ -z "${ROS_DISTRO}" ]; then
    echo "Can't detect ROS2 version. Source your ros2 distro first."
    exit 1
fi

vcs import ../ < hsr_hardware.repos