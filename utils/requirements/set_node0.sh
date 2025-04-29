#!/bin/bash

sudo cp ./node0.yaml /etc/netplan

sudo chmod 600 /etc/netplan/node0.yaml

sudo netplan apply
