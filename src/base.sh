#!/bin/sh

set -eu

DIR="$(dirname "$0")"

echo "Installing packages..."
case $(uname -s) in
    Linux)
        . /etc/os-release
        case $ID in
            ubuntu) bash "$DIR/base_${ID}.sh" ;;
            fedora) bash "$DIR/base_${ID}.sh" ;;
            opensuse) bash "$DIR/base_${ID}.sh" ;;
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
