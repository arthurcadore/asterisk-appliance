#!/bin/bash

echo "###################################################################"
echo "Initializing Asterisk Server..."

service asterisk start

echo "###################################################################"
echo "Displaying UDP ports for access..."
netstat -aunp

# Keep the script running by tailing /dev/null
tail -f /dev/null
