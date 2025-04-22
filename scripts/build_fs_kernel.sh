#!/bin/bash

FS_NAME=fs

cd ~
wget https://mirrors.edge.kernel.org/pub/linux/kernel/v6.x/linux-6.0.3.tar.gz
tar xzvf linux-6.0.3.tar.gz
mv linux-6.0.3 linux-${FS_NAME}
cd linux-${FS_NAME}

# FS PATCH
cp ~/iopte/fs/fands.patch .
patch -p1 --ignore-whitespace < ./fands.patch

cp /boot/config-$(uname -r) .config

scripts/config --disable SYSTEM_TRUSTED_KEYS
scripts/config --disable SYSTEM_REVOCATION_KEYS

# 设置 CONFIG_LOCALVERSION
if grep -q "^CONFIG_LOCALVERSION=" .config; then
        sed -i "s/^CONFIG_LOCALVERSION=.*/CONFIG_LOCALVERSION=\"-${FS_NAME}\"/" .config
else
        echo "CONFIG_LOCALVERSION=\"-${FS_NAME}\"" >> .config
fi

make olddefconfig

NR_CPU=$(lscpu | grep -E '^CPU\(s\):' | awk '{print $2}')

make -j${NR_CPU} bzImage
make -j${NR_CPU} modules
make -j${NR_CPU} modules_install
make -j${NR_CPU} install
