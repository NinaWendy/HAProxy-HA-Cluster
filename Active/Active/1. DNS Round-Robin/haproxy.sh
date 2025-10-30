#!/bin/bash

sudo apt remove hapee-extras-vrrp

sudo apt-get install hapee-extras-vrrp22

# List VRIDs already in use
sudo tcpdump -vvvenns0 -c 5 -i eth0 vrrp | grep -o "vrid [0-9]*"

sudo nano /etc/hapee-extras/hapee-vrrp.cfg

sudo systemctl start hapee-extras-vrrp

sudo systemctl enable hapee-extras-vrrp

sudo nano /etc/sysctl.conf

```net.ipv4.ip_nonlocal_bind=1```

sudo sysctl -p