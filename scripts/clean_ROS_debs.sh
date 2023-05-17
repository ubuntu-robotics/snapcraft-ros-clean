#!/bin/bash
set -x

. "$(dirname "$0")/clean_debs.sh"

remove-apt-package ros-$ROS_DISTRO-cmake-modules
remove-apt-package ros-$ROS_DISTRO-gencpp
remove-apt-package ros-$ROS_DISTRO-geneus
remove-apt-package ros-$ROS_DISTRO-genmsg
remove-apt-package ros-$ROS_DISTRO-gennodejs
remove-apt-package ros-$ROS_DISTRO-genpy
remove-apt-package ros-$ROS_DISTRO-message-generation
remove-apt-package ros-$ROS_DISTRO-roslint
remove-apt-package ros-$ROS_DISTRO-roslisp
remove-apt-package ros-$ROS_DISTRO-rosmake
remove-apt-package ros-$ROS_DISTRO-rosunit
remove-apt-package python3-catkin
remove-apt-package python3-catkin-lint
remove-apt-package python3-pytest
# remove globs of packages
remove-apt-package-with-prefix ros-$ROS_DISTRO-test
remove-apt-package-with-prefix python3-rosdep
remove-apt-package-with-prefix cmake
####

