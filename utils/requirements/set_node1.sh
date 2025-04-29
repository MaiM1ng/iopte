#!/bin/bash

# 拷贝 node1.yaml 到系统 netplan 配置目录
sudo cp ./node1.yaml /etc/netplan/

# 修正权限
sudo chmod 600 /etc/netplan/node1.yaml

# 应用配置
sudo netplan apply

