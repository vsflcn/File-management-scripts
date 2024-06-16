#! /bin/bash

#Script which checks file existence in the directory from user's input

echo "Please choose directory to check file existence:"
read mainDir

echo "Choose file to check existence:"
read fileName

if [[ ! -d $mainDir ]]
then
    echo "Error: no such directory '$mainDir'"
    exit 1
fi

if [[ -f "$mainDir/$fileName" ]]
then
    echo "Success! '$fileName' currently exists in directory '$mainDir'"
else 
    echo "Unfortunantly, there is no such file '$fileName' in target directory '$mainDir'"
fi

echo "Done!"