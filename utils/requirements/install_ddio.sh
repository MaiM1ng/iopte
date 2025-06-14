#!/bin/bash
set -e

cd ~

apt install msr-tools libpci-dev -y

git clone https://github.com/aliireza/ddio-bench.git

cd ddio-bench

#sm110p 0x51
#r650 0xca

sed -i 's/\bnic_bus=0x[0-9a-fA-F]\+\b/nic_bus=0xca/' change-ddio.c

# ddio-off
gcc change-ddio.c -o change-ddio-off -lpci
# ddio-on
sed -i 's/\bddio_state=0\b/ddio_state=1/' change-ddio.c
gcc change-ddio.c -o change-ddio-on -lpci
