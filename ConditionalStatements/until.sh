#!/bin/bash

var=0
until [ ! $var -lt 10 ]
do
    echo $var
    var=`expr $var + 1`
done