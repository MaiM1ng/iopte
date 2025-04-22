#!/bin/bash

set -e

cd ~

git clone https://github.com/esnet/iperf.git

cd iperf

./configure
make -j32
make install

ldconfig
