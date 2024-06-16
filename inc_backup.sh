#! /bin/bash

#User's input
echo "Please write the name of your directory:"
read mainDir

echo "Please choose desired directory to move files to:"
read desDir

#Check if derictories are existing
if [[ ! -d $mainDir ]]
then 
    echo "Error: There is no such directory '$mainDir'"
    exit 1
fi 

if [[ ! -d $desDir ]]
then
    echo "Error: There is no such directory '$desDir'"
    exit 1
fi 

#Create meta data file if hasn't been already created
metadata_file="backup_metadata.txt"
if [[ ! -f "$metadata_file" ]]
then
    echo "2024-06-09 13:00:00" > "$metadata_file"
fi

#Read the meta-file
last_backup_date=$(cat "$metadata_file")

#Check all files in directory, if file newer than meta-file (not updated), copies "another" file to desired directory
for fileName in "$mainDir/*"
do
    if [[ "$fileName" -nt "$metadata_file" ]] # -nt "newer than"
    then
        cp "$fileName" "$destDir"
        echo "Copied $fileName"
    fi
done

#After adding "another" file, adds new date and time to meta-file
date +"%Y-%m-%d %H:%M:%S" > "$metadata_file"

echo "Backup completed successfully!"

#Meta-data changes after running script only