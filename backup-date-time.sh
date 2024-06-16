#! /bin/bash/

# Script for backup files adding date & time to the name

echo "Enter the name of file to move: "
read fileName

if [[ -f $fileName ]]
then 
    
    destDir="" #pass your path between quotes
    baseName=(basename $fileName)
    suffix=$(date '+%Y-%m-%d %H:%M:%S')
    : 'set +x
    echo $suffix
    set -x'
    destFile="$destDir${baseName%.*}_$suffix.${baseName##*.}"
    cp "$fileName" "$destFile"
    echo "Successfully copied!"
else 
    echo "Error"
fi