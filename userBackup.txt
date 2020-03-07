#!/bin/bash
greeting="Welcome"
user=$(whoami)
day=$(date +%A )

echo "$greeting there $user"
echo "today is $day"
echo "YOu are using $SHELL"
echo "YOu are using bash version : $BASH_VERSION"




function details {
echo "$(pwd)"
echo -n "The user is : "$user"!!!!!................"
}
details



input=/home/$user
output=/tmp/${user}_home_$(date +%Y-%m-%d_%H%M%S).tar.gz

tar -czf $output $input 2> /dev/null
echo "Backup of $input is completed! Details about the file is: "
ls -l $output
