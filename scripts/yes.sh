#!/bin/bash

# Fuccion definitions
YES() {
    echo "YES"
}

NO() {
    echo
    echo "NO" | boxes -d critical
    echo
}

FAIL() {
    echo
    echo "[ WTF ]" | boxes -d warning
    echo
    exit 2
}

# Variable definitions




# Main fuctions
echo -n "SELECT (YES/NO) : "
read CHOICE

case $CHOICE in
    y|Y|yes|YES|Yes) YES   ;;
    n|N|no|NO|No)    NO    ;;
    *)               FAIL  ;; 
esac
