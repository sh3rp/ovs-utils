#!/bin/sh

OVS_VER=2.7.0

sudo apt -y update && sudo apt -y upgrade
sudo apt -y install automake autoconf gcc libssl-dev python-pip
sudo pip install six

modprobe tun
modprobe vxlan

git clone https://github.com/openvswitch/ovs.git
cd ovs
git checkout v${OVS_VER}
