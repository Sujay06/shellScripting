#!/bin/bash

#pass filename and a int value for linne number
n=1
file='123.txt'

#Read contents of file

while read line; do
echo " $n: $line "
n=$((n+1))
done < $file