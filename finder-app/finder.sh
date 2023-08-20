#!/bin/bash

if [ $# != 2 ]
then
    echo Error: Invalid number of arguments specified
    exit 1
else
    filesdir=$1
    if [ -d $filesdir ]
    then
        searchstr=$2
        numFiles=$(find $filesdir -type f | wc -l)
        matches=$(grep -r $searchstr $filesdir | wc -l)
        echo The number of files are $numFiles and the number of matching lines are $matches
    else
        echo Error: $filesdir is not a directory
        exit 1
    fi
fi
