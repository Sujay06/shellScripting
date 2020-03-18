#!/bin/bash

#pass filename and a int value for linne number
n=1
file='123.txt'

#Read contents of file

while read line; do
echo " $n: $line "
n=$((n+1))
done < $file

#(OR)pass filename as an argument at CLI runtime
n=0
filename=$1

#Read contents of file
while read line; do
echo " $n: $line "
n=$((n+1))
done <$1