#!/bin/sh

set -eu

INSTALL_FAST=${INSTALL_FAST:=""}

pkg update

if [ -z "$INSTALL_FAST" ] ; then
    pkg upgrade -y
    freebsd-update fetch install
fi

pkg install -y \
    bash \
    curl \
    fish \
    git \
    mosh \
    rsync \
    sudo \
    tmux
