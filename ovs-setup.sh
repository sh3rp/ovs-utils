#!/bin/sh

OVS_VER=2.7.0

sudo apt -y update && sudo apt -y upgrade
sudo apt -y install automake autoconf gcc libssl-dev python-pip
sudo pip install six

modprobe tun
modprobe vxlan

wget http://openvswitch.org/releases/openvswitch-2.9.0.tar.gz
tar xvfz openvswitch-2.9.0.tar.gz
cd openvswitch-2.9.0
./configure
make
sudo make install
sudo /sbin/modprobe openvswitch

sudo /usr/local/share/openvswitch/scripts/ovs-ctl start
