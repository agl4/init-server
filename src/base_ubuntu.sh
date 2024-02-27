#!/bin/sh

set -eu

INSTALL_FAST=${INSTALL_FAST:=""}

sudo add-apt-repository -y universe
sudo add-apt-repository -y multiverse
sudo apt-get update -y

if [ -z "$INSTALL_FAST" ] ; then
    sudo apt-get upgrade -y
fi

sudo apt-get install -y \
    bash \
    curl \
    fish \
    git \
    mosh \
    openssh-server \
    rsync \
    tmux
