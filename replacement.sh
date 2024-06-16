#! /bin/bash

#Script which replace text in chosen file

echo "Enter the directory where .txt files need replacement:"
read dir

echo "Enter the text to search for:"
read searchText

echo "Enter the text to replace with:"
read replaceText

if [[ ! -d $dir ]]
then 
    echo "Error: Directory '$dir' does not exist."
    exit 1
fi

for file in "$dir"/*.txt
do
    if [[ -f $file ]]
    then
        sed -i "s/$searchText/$replaceText/g" "$file"
        echo "Replaced '$searchText' with '$replaceText' in file '$file'."
    else 
        echo "No .txt files found in directory '$dir'."
    fi
done