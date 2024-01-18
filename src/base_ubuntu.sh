#!/bin/sh

set -eu

INSTALL_FAST=${INSTALL_FAST:=""}

add-apt-repository -y universe
add-apt-repository -y multiverse
apt-get update -y

if [ -z "$INSTALL_FAST" ] ; then
    sudo apt-get upgrade -y
fi

apt-get install -y \
    bash \
    curl \
    fish \
    git \
    mosh \
    rsync \
    tmux
