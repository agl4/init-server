#!/bin/sh

set -eu

INSTALL_FAST=${INSTALL_FAST:=""}

if [ -z "$INSTALL_FAST" ] ; then
    sudo dnf upgrade -y
fi

dnf install -y \
    bash \
    curl \
    fish \
    git \
    rsync \
    tmux
