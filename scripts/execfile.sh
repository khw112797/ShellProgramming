#!/bin/bash

echo -n "Enter Your Filename : "
read FILENAME

#echo $FILENAME
if [ -x "$FILENAME" ] ; then
    $FILENAME
else
    echo " [ FAIL ] $FILENAME: File is nope "
    exit 1
fi
