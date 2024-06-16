#! /bin/bash

#Script which checks if a site is available now using ping

url="google.com"
ping -c -1 ${url} 
if [[ $? -eq 0 ]]
then 
    echo "Google is available!"
else 
    echo "Site is not available right now, please try later"
fi