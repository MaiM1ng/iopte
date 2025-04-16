#!/bin/bash

FS_NAME=native

cd ~
wget https://mirrors.edge.kernel.org/pub/linux/kernel/v6.x/linux-6.0.3.tar.gz
tar xzvf linux-6.0.3.tar.gz
mv linux-6.0.3 linux-$(FS_NAME)

cd linux-$(FS_NAME)
cp /boot/config-$(uname -r) .config
make olddefconfig
