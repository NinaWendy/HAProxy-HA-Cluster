#!/bin/bash

sudo apt-get update

sudo apt-get install haproxy

sudo nano /etc/default/haproxy

sudo nano /etc/haproxy/haproxy.cfg

sudo haproxy -f /etc/haproxy/haproxy.cfg -c

sudo systemctl restart haproxy.service
