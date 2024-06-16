#! /bin/bash/

# Basic script for backup files 

echo "Enter the name of file to move"
read fileName

if [[ -f $fileName ]]
then
    destDir="" #pass your path between quotes
    baseName=$(basename "$fileName") 
    dateSuffix=$(date '+%Y%m%d')
    destFile="$destDir${baseName%.*}_$dateSuffix.${baseName##*.}"
    cp "$fileName" "$destFile"
    echo "File was successfully copied"
else 
    echo "Error: there is no such file"
fi