#!/bin/bash
#Variables
INTERFACE=$(nmcli device status | grep -Eo -m 1 '.*[0-9].[0-9]') # Get wireless interface name
INTERFACE_MON=$INTERFACE"mon"
echo $INTERFACE
#Pattern:wlpºsº where:  wl-> wlan		pº->PCI Bus	n		sº->slot n
sudo airmon-ng start $INTERFACE 
echo -e "Accessing Monitor Mode.\nInternet would be unavailable."

