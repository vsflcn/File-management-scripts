#! /bin/bash

#Script which checks file's existence by an extention


echo "Choose the extention of preferable file:"
read ext

echo "Choose the directory files' extentions will be from:"
read dir

if [[ ! -d $dir ]]
then 
    echo "Error: There is no such directory '$dir'"
    exit 1
fi 

found_files=0
for file in "$dir"/*
do
    if [[ "${file##*.}" == "$ext" ]]
    then
        echo "'$ext' You'he chosen exist in directory '$dir'"
        found_files=1
    fi
done

if [[ $found_files -eq 0 ]]
then
    echo "No files with extension '$ext' found in directory '$dir'"
fi