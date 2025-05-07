#!/bin/bash

sudo apt update

sudo apt install -y flex bison libelf-dev libssl-dev libpci-dev msr-tools sysstat cmake autoconf automake libtool gcc make texinfo screen neofetch

sudo apt install -y python3-pip

pip3 install numpy
pip3 install pandas

sudo apt-get install -y sysstat

sudo sed -i 's/^ENABLED="false"/ENABLED="true"/' /etc/default/sysstat

service sysstat restart
