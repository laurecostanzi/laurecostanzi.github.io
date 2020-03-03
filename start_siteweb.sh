#!/bin/bash
IP=$(ip addr show wlan0 | grep "noprefixroute wlan0" | awk '{print $2}' | cut -d '/' -f 1)
echo "Site adresse: http://${IP}:8000"
cd ~/Siteweb/startbootstrap-creative-master/
python -m SimpleHTTPServer
sleep 10