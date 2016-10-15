#!/bin/bash
Ktime=$(date | awk {'print $4'} | awk -F ":" {'print $1":"$2'})
key=$Ktime"VeryStrongKey"
passw0rd=$(echo -n $key | md5sum | awk {'print $1'} | awk '{print substr($0,20)}')
echo -e "$passw0rd\n$passw0rd" | (passwd UserName)
