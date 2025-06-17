#!/bin/bash
INPUT=192.168.1
for ip in $(seq 1 254); do
ping -c 1 $INPUT.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
