#!/bin/bash

set -e

cd ~

git clone --recursive https://github.com/intel/pcm
cd pcm

git submodule update --init --recursive

mkdir build
cd build
cmake ..
cmake --build . --parallel
