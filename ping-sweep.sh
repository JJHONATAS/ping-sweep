#!/bin/bash

#Description

#look at your ip address and the type of network class using an ifconfig
# and put ./ping-sweep [myIP]

if [ "$1" == ""]
then
echo "Usage: ./ping-sweep.sh [network]"
echo "example: ./ping-sweep.sh 192.168.0.10"
else
for x in `seq 1 254`; do
ping -c 1 $1.$x | grep "64 bytes" | cut -d" " -f4 | sed 's/.$//'
done
fi
