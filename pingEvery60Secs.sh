#!/bin/bash


log=/tmp/mylogs.log     #To store the logs
SECONDS=60              
EMAIL= <Enter-your-email-here>      #SMTP configured Email-ID

for i in $@
do
    echo "$i-UP!" >$log.$i
done

while true
do
    for i in $@;do    
        ping -c 5 $i 2>/dev/null
        if [ $? -ne 0 ];then        #to check if then host is down
             STATUS=$(cat $log.$i)
                if [ $STATUS != "$i-DOWN!" ];then
                    echo "`date`: ping failed, $i host is down!!" | 
                fi
            echo "$i-DOWN!" > $log.$i
        else 
            STATUS=$(cat $log.$i)
                if [ $STATUS != "$i-UP!" ];then     #to check if the host is up
                    echo "`date`:ping ok, $i host is UP!!"
                fi
            echo "$i-UP!" > $log.$i
        fi
    done
sleep $SECONDS
done
