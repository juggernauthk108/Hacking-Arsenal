#!/bin/bash
read -e -p "Enter the CIDR: " -i "192.168.0/24" subnet
read -e -p "Give me something to catch the bastard: " -i "oracle" prey
echo -n "Your prey is at: "
nmap -sn -T4 $subnet 2>/dev/null | grep -B 2 -i $prey 2> /dev/null | egrep "([0-9]{1,3}[\.]){3}[0-9]{1,3}" -o 2> /dev/null 
echo $ip
echo "Kill that bastard!" | cowsay
oct=$(echo )
echo "prey sits at $(echo $ip | cut -f4 -d\.)" | espeak 2> /dev/null
