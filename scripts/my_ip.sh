#!/bin/bash
ip=$(ifconfig wlan0 | egrep "([0-9]{1,3}[\.]){3}[0-9]{1,3}" -o | head -n 1)
echo "Your IP is: $ip" | espeak 2> /dev/null
