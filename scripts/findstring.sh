#!/bin/bash

if [ $# -ne 2 ]; then   
    echo "Usage: $0 <pattern> <filename>"
    exit 1
fi
PATTERN="$1"
FILENAME="$2"

grep "$PATTERN" "$FILENAME" 
if [ $? -eq 0 ] ; then
    echo "[ OK ] I finded PATTERN to $FILENAME"
else
    echo "[ FAIL ] I Can't find PATTERN to $FILENAME"
fi
