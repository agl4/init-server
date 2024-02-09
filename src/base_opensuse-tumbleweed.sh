#!/bin/sh

set -eu

INSTALL_FAST=${INSTALL_FAST:=""}

sudo zypper ref

if [ -z "$INSTALL_FAST" ] ; then
    sudo zypper dup -y
fi

sudo zypper install -y \
    bash \
    curl \
    fish \
    git \
    mosh \
    rsync \
    tmux
