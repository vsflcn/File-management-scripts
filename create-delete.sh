#! /bin/bash

#Script that checks if file exists, shows content and then delete it

#DATE/TIME
echo $(date '+%Y-%m-%d %H:%M:%S')

#CREATE/DELETE FILES
if [[ -f "test.txt" ]]
then 
    echo "File already exist"
    sleep 1

    echo "Contetnts of the file:"
    cat test.txt
    sleep 2

    echo "Now it's time to delete it in..."
    sleep 2
    echo "3.."
    sleep 1
    echo "2.."
    sleep 1
    echo "1.."
    sleep 1
    echo "BYE!"
    sleep 1

    rm test.txt
    echo "File successfully deleted!"

else
    echo "Creating new file test.txt..."
    echo "Hello World" > test.txt
    echo "Contents of the new file:"
    cat test.txt
fi






