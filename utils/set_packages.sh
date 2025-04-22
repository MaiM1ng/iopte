#!/bin/bash

sudo apt update

sudo apt install flex bison libelf-dev libssl-dev libpci-dev msr-tools sysstat cmake autoconf automake libtool gcc make texinfo

sudo apt install python3-pip

pip3 install numpy
pip3 install pandas

sudo apt-get install sysstat

sudo sed -i 's/^ENABLED="false"/ENABLED="true"/' /etc/default/sysstat

service sysstat restart
