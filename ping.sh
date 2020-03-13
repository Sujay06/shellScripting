#!/bin/bash

#ping entered IPs and store the result in  log file
is_alive_ping () {
    ping -c 5 $1 > /path/where/the/log/is/to/be/stored
    if [ $? -eq 0 ];then
    echo  "IP $1 is UP!!"
    else
    echo  "$1 is down!!"
    fi
    echo -n " "
    ping -c 2 $2 > /path/where/the/log/is/to/be/stored
    if [ $? -eq 0 ];then
    echo  "IP $2 is UP!!"
    else
    echo "$2 is down!!"
    fi
}

#Read input from the arguments
echo -n "Enter the ip: "
read ip1 ip2
is_alive_ping $ip1 $ip2

