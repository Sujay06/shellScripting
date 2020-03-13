#!/bin/bash

#print half pyramid using *
rows=5
for((i=0;i<=rows;i++))
do
    for((j=0;j<=i;j++))
    do
    echo -n "* "
    done
    echo
done

echo -e "\n"

#print inverted half pyramid using *
rows=5
for((i=rows;i>=0;i--))
do
    for((j=0;j<=i;j++))
    do
    echo -n "* "
    done
    echo
done

echo -e "\n"

#print half pyramid using numbers
number=1
a=5
for((i=0;i<=a;i++))
do
    for((j=0;j<=i;j++))
    do
    echo  -n "$number"
    number=$((number + 1))
    done
    number=1
    echo
done

echo -e "\n"

#print inverted half pyramid using numbers

number=1
rows=5
for((i=rows;i>=0;i--))
do
    for((j=0;j<=i;j++))
    do
    echo -n "$number"
    number=$((number + 1))
    done
    number=1
    echo
done
