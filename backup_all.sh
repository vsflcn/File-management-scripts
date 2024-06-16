#! /bin/bash/

#Backup script to copy files from one directory to another by user's input

echo "Choose main directory files will be copied from: "
read mainDir

echo "Choose desired directory files will be copied to: "
read desDir

echo "Choose a file to move: "
read fileName

if [[ ! -d $mainDir ]]
then
    echo "Error: Main directory '$mainDir' does not exist."
    exit 1
fi

if [[ ! -d $desDir ]]
then
    echo "Error: Desired directory '$desDir' does not exist."
    exit 1
fi

if [[ ! -f $mainDir/$fileName ]]
then
    echo "Error: File '$fileName' does not exist in '$mainDir'."
    exit 1
fi

cp "$mainDir/$fileName" "$desDir"
if [[ $? -eq 0 ]]
then
    echo "Successfully copied! Please check your directory '$desDir'"
else
    echo "Error: Failed to copy '$fileName' to '$desDir'."
fi

