#!/bin/bash
set -x

. "$(dirname "$0")/clean_debs.sh"

remove-apt-package ros-$ROS_DISTRO-rosidl-generator-c
remove-apt-package ros-$ROS_DISTRO-rosidl-generator-cpp
remove-apt-package ros-$ROS_DISTRO-ament-cmake-gmock
remove-apt-package ros-$ROS_DISTRO-python-cmake-module
remove-apt-package python3-pytest
# remove globs of packages
remove-apt-package-with-prefix ros-$ROS_DISTRO-ament-cmake
remove-apt-package-with-prefix ros-$ROS_DISTRO-testing
remove-apt-package-with-prefix python3-colcon
remove-apt-package-with-prefix python3-rosdep
remove-apt-package-with-prefix cmake
####

