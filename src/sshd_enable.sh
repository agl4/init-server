#!/bin/sh

set -eu

INSTALL_ONLY=${INSTALL_ONLY:=""}
if [ -n "$INSTALL_ONLY" ] ; then
    echo "WARNING: INSTALL_ONLY flag set, exiting."
    exit 0
fi


echo "Enable sshd..."
case $(uname -s) in
    Linux)
        systemctl enable sshd
        systemctl restart sshd
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
