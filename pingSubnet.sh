#!/bin/bash

#ping function:
is_alive () {
    ping -c 5 $1 2> /dev/null
    [ $? -eq 0 ] && echo "Node wth IP: $i is up"
}

#ping all the IPs in the given subnet:
for i in 192.168.2.{1..255}
do
is_alive $i & disown
done