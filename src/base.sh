#!/bin/sh

set -eu

DIR="$(dirname "$0")"

INSTALL_FAST=${INSTALL_FAST:=""}
if [ -n "$INSTALL_FAST" ] ; then
    echo "WARNING: INSTALL_FAST variable set, not doing updates."
fi
INSTALL_ONLY=${INSTALL_ONLY:=""}
if [ -n "$INSTALL_ONLY" ] ; then
    echo "WARNING: INSTALL_ONLY variable set, not doing service restarts."
fi

echo "Installing packages..."
case $(uname -s) in
    Linux)
        . /etc/os-release
        case $ID in
            ubuntu) bash "$DIR/base_${ID}.sh" ;;
            fedora) bash "$DIR/base_${ID}.sh" ;;
            opensuse*) bash "$DIR/base_${ID}.sh" ;;
            *) echo "Unsupported OS."
               exit 1
               ;;
        esac
        ;;
    FreeBSD)
        bash "$DIR/base_freebsd.sh"
        ;;
     *)
         echo "Unsupported OS."
         exit 1
         ;;
esac
