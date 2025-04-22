#!/bin/bash

set -e

cd ~

wget https://content.mellanox.com/ofed/MLNX_OFED-24.10-2.1.8.0/MLNX_OFED_LINUX-24.10-2.1.8.0-ubuntu22.04-x86_64.tgz

tar -xvf MLNX_OFED_LINUX-24.10-2.1.8.0-ubuntu22.04-x86_64.tgz

cd MLNX_OFED_LINUX-24.10-2.1.8.0-ubuntu22.04-x86_64

sudo ./mlnxofedinstall --add-kernel-support
