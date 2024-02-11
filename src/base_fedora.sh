#!/bin/sh

set -eu

INSTALL_FAST=${INSTALL_FAST:=""}

if [ -z "$INSTALL_FAST" ] ; then
    sudo dnf upgrade -y
fi

sudo dnf install -y \
    bash \
    curl \
    fish \
    git \
    mosh \
    rsync \
    tmux
