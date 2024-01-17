#!/bin/sh

set -eu

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
