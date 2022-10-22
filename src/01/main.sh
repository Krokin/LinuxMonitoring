#!/bin/bash

if [ $# == 1 ]
then
        if [[ $1 =~ [0-9] ]]
        then
                 echo "Indvalid input"
        else
                echo "$1"
        fi
else
echo "Invalid input"
fi
