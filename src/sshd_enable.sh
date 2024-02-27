#!/bin/sh

set -euxv

INSTALL_ONLY=${INSTALL_ONLY:=""}
if [ -n "$INSTALL_ONLY" ] ; then
    echo "WARNING: INSTALL_ONLY flag set, exiting."
    exit 0
fi


echo "Enable sshd..."
case $(uname -s) in
    Linux)
        sudo systemctl enable ssh
        sudo systemctl restart ssh
        ;;
    FreeBSD)
        sysrc sshd_enable="YES"
        service sshd restart
        ;;
     *)
         echo "Unsupported OS."
         exit 1
         ;;
esac
