#!/bin/sh

OVS_VER=2.7.0

sudo apt update && sudo apt upgrade
sudo apt install automake autoconf gcc libssl-dev python-pip
sudo pip install six

modprobe tun
modprobe vxlan

git clone https://github.com/openvswitch/ovs.git
git checkout v${OVS_VER}
