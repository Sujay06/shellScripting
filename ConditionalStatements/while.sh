#!/bin/bash

var=0
while [ $var -lt 10 ]
do
    echo $var
    var=`expr $var + 1`
done

a=1
while [ "$a" -lt 10 ] 
do
    b=$a
    while [ "$b" -gt 0 ]
    do
    echo $b
    b=$((b + 1))
    done
    echo
    a=$((a + 1))
done
