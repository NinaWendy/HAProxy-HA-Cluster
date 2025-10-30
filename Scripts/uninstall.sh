#!/bin/bash

sudo systemctl stop keepalived

sudo systemctl disable keepalived

sudo rm -rf /etc/keepalived

sudo rm -f /etc/systemd/system/keepalived.service

sudo systemctl daemon-reload
