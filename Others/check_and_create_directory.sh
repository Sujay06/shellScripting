#!/bin/bash

#take user input as dir name

echo "Enter the name of the directory:" 
read input

#Check if the dir exists, else create a new dir

if [ -d "$input" ];then
echo "Directory exists"
else
mkdir $input
echo "Directory created!"
fi