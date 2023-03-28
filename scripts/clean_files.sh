#!/usr/bin/bash
#### remove unnecessary files
# remove every header and source file
fdfind --type file --type symlink '.*\.(hpp|hxx|h|hh|cpp|cxx|c|cc)$' $SNAPCRAFT_PRIME  --exec rm {}
# remove every cmake file
fdfind --type file --type symlink '(.cmake|CMakeLists.txt)$' $SNAPCRAFT_PRIME  --exec rm {}
# remove every example(s) directories
fdfind --type directory "^examples?$" $SNAPCRAFT_PRIME --exec rm -rf {}
# remove man files
rm -rf $SNAPCRAFT_PRIME/usr/share/man
# remove doc files
rm -rf $SNAPCRAFT_PRIME/usr/share/doc
# remove perl share files
rm -rf $SNAPCRAFT_PRIME/usr/share/perl
# remove /usr/src/
rm -rf $SNAPCRAFT_PRIME/usr/src
# remove additional sources
rm -rf $SNAPCRAFT_PRIME/opt/ros/$ROS_DISTRO/src/
####

