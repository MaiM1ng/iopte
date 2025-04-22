#!/bin/bash

set -e

cd ~

git clone https://github.com/intel/intel-cmt-cat.git
cd intel-cmt-cat

make -j32
make install
