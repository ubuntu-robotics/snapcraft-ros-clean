#!/bin/bash

#### remove unnecessary debian packages
function remove-apt-package () {
  # because of the previous cleanup, we might have deleted headers that were installed by Debian packages, hence we ignore listing a file that no longer exist
  set +o pipefail
  $(dpkg -L $1 | xargs -I {} bash -c 'ls -ld $SNAPCRAFT_PRIME{} 2> /dev/null || true' | grep -v "^d" | awk '{print $NF}' | xargs rm -f)
  # remove empty directories
  $(dpkg -L $1 | xargs -I {} bash -c 'ls -ld $SNAPCRAFT_PRIME{} 2> /dev/null || true' | grep "^d" | tail -n +2 | awk '{print $NF}' | xargs -I {} rmdir --ignore-fail-on-non-empty {})
  set -o pipefail
}
function remove-apt-package-with-prefix () {
  for pkg in $(dpkg --get-selections "$1*" | awk '{print $1}')
  do
    remove-apt-package $pkg
  done
}

