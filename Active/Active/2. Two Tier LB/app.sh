#!/bin/bash

sudo apt install -y python3

sudo apt install curl

echo "Hello from $(hostname)" > index.html

python3 -m http.server 4000 

#OR 

nohup python3 -m http.server 4000 > /tmp/webserver.log 2>&1 &


# Stop it
nohup python3 -m http.server 4000 > /tmp/webserver.log 2>&1 &

# check its running
ps aux | grep http.server

curl http://localhost:4000
