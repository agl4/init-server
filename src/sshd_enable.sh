#!/bin/sh
set -eu

INSTALL_ONLY=${INSTALL_ONLY:=""}
_install_only(){
    if [ -n "$INSTALL_ONLY" ] ; then
        echo "WARNING: INSTALL_ONLY flag set, exiting."
        exit 0
    fi
}


echo "Enable sshd..."
case $(uname -s) in
    Linux)
        _install_only
        systemctl enable sshd
        systemctl restart sshd
        ;;
    FreeBSD)
        sysrc sshd_enable="YES"
        _install_only
        service sshd restart
        ;;
     *)
         echo "Unsupported OS."
         exit 1
         ;;
esac
