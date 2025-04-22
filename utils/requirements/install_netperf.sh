#!/bin/bash

set -e

cd ~

git clone https://github.com/HewlettPackard/netperf.git
cd netperf

cp ~/iopte/fs/utils/tcp/netperf-logging.diff .

git apply netperf-logging.diff

./autogen.sh
./configure

make CFLAGS=-fcommon -j32
make install
