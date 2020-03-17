#!/bin/bash

function a1 () {
    echo "Hello There,this is a simple calculator program!!..."
    read_input
}

function read_input () {
echo "Enter first number: "
    read i1
    echo "Enter second number: "
    read i2
    s1 $i1 $i2
}

function s1 () {
    ((sum=$1+$2))
    echo "Sum is: $sum"
    ((product=$1*$2))
    echo "Area is : $area"
    ((dif=$1-$2))
    echo "The difference is: $dif"
    ((mod_val=$1%$2))
    echo "The remainder is: $mod_val"

}
a1