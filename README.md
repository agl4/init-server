# Server init scripts

This code installs some basic tools and make some initial configuration to my
server systems.

Supports:

- Ubuntu 20.04, 22.04
- Fedora 38-40
- FreeBSD

## Install

To install the environment run the following:

```shell
git clone https://github.com/agoloncser/scripts-init-server
cd scripts-init-server
make install
```

By default this upgrades the whole system before installing anything. To skip
this step, set the variable `INSTALL_FAST` before running the install
scripts.

```shell
INSTALL_FAST=1 make install
```
