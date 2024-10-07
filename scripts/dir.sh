#!/bin/bash

echo -n "Enter File Name : "
read FILE1

#echo $FILE1
if [ -f $FILE1 ] ; then
    echo "[ OK ] $FILE1: file"
elif [ -d $FILE1 ] ; then
    echo "[ OK ] $FILE1: dir"
else    
    echo "[ FAIL ] $FILE1: it's not file or dir"
    exit 2
fi



