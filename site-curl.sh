#! /bin/bash

#Script which checks if a site is available now using curl

url="https://www.google.com"

if curl --output /dev/null --silent --head --fail "${url}";
then
    echo "Google is available!"
else 
    echo "Site is not available right now, please try later"
fi