#!/bin/bash

sudo apt update

sudo apt-get install build-essential libssl-dev

cd ~

wget https://www.keepalived.org/software/keepalived-2.3.4.tar.gz

tar xzvf keepalived*

cd keepalived*

./configure

make

sudo make install

sudo mkdir -p /etc/keepalived

sudo nano /etc/keepalived/keepalived.conf

sudo nano /etc/systemd/system/keepalived.service

sudo systemctl daemon-reload

sudo systemctl enable keepalived

sudo systemctl start keepalived

ip a










sudo nano /etc/keepalived/keepalived.conf

sudo systemctl enable keepalived --now

#Check the VIP
ip addr show | grep 192.168.1.100

#Check VRRP Status
sudo journalctl -u keepalived | grep "Transition"

