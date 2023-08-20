#!/bin/bash

if [ $# != 2 ]
then
    echo Error: Invalid number of arguments
    exit 1
else
    writefile=$1
    writestr=$2
    mkdir -p $(dirname $writefile) && echo $writestr > $writefile
    if [ $? != 0 ]
    then
        echo Error: $writefile could not be created
        exit 1
    fi
fi 
