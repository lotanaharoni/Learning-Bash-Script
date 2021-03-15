#!/bin/bash
directory=$@
# Check if the directory is valid
if [ -d "$directory" ]; then
    cd $directory
    content=$(ls -a | grep "\.log$")
    # Check if the folder contains any log files
    if [ ! -z "${content}" ]; then
    # Write the log files to a file name 'temp.txt'
    
        printf "${content}" > temp.txt
        # Go over each log file listed in the temp file and search how many lines contain
        # the word ERROR and print them to the screen
        grep -c ".*ERROR.*" $content
    else
        echo "There is no log files there"
        exit 1a
    fi
else
    echo "Directory does not exists"
    exit 1
fi
