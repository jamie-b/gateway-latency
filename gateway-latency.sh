#!/bin/bash
while true
do
	echo "Pinging default gateway: " `route -n get default | grep gateway: | awk -F" " '{print $2}'` 
	ping -c 1 `route -n get default | grep gateway: | awk -F" " '{print $2}'` | grep time | awk -F"=" '{print $4}'
	sleep 1
done
