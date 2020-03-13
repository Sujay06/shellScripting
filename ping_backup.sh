#!/bin/bash

#to get the user
user=$(whoami)

#ping the input ip given number of times and store the logs in the specified location
is_alive () {
    ping -c 10 $ip > /path/for/logs/to/be/stored/${USER}_logs_$(date +%Y-%m-%d_%H%M%S).txt
    if [ $? -eq 0 ];then
    echo "$1 is UP!!"
    else
    echo "$1 is down!!"
    fi
}

#read the user input
echo "enter the ip address: "
read ip
is_alive $ip

input=/path/for/logs/to/be/stored/${USER}_logs_$(date +%Y-%m-%d_%H%M%S).txt
output=/path/where/backups/are/to/be/stored/${user}_backup_$(date +%Y-%m%d_%H%M%S).tar.gz

#create a tar ball and change the file permissions
tar -czf $output $input  2> /dev/null
echo "Backup of $input complete"
echo "Details of backup file: "
ls -la $output
echo "Initialising change of file permissions!"
chmod +rwx $output
echo -n -e "Permissions of the $output are changed" "\n"
ls -la $output

