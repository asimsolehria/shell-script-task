#!bin\bash

if [ $#==0 ]; then
    echo "Please enter a file name?"
    read fileName
    if [ -f $fileName ]; then
        echo "File already exist! Opening for Editing"
        sleep 3
        nano $fileName
    else
        echo "File created with the name $fileName"
        echo "Opening $fileName for editing "
        sleep 3
        echo "#!bin\bash" >$fileName
        nano $fileName
    fi
elif [ -f $1 ]; then
    echo "File already exists with the name $1"
    echo "Opening for editing"
    sleep 3
    nano $1
else
    fileName="$1"
    chmod a=-rwx $fileName
    chmod u=+rwx $fileName
    echo "File created with the name $filename"
    echo "Opening $fileName for editing "
    echo "#!bin\bash" >$fileName
    sleep 3
    nano $1

fi
