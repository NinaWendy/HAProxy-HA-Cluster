#!/bin/bash


sudo apt-get update

# Install Haproxy

sudo apt-get install haproxy

sudo nano /etc/default/haproxy

sudo nano /etc/haproxy/haproxy.cfg

sudo haproxy -f /etc/haproxy/haproxy.cfg -c

sudo systemctl restart haproxy.service

# Install Keepalived

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
