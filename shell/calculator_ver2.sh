#!/bin/bash
 
 Error() {
    echo "[ Fail ] Wrong Answer"
    exit 2
 }
echo -n "Enter A: "
read A

echo -n "OP     : "
read OP


echo -n "Enter B: "
read B

case $OP in 
    '+') echo "$A + $B = $(expr $A + $B)"   ;;
    '-') echo "$A - $B = $(expr $A - $B)"   ;;
    '*') echo "$A x $B = $(expr $A \* $B)"  ;;
    '/') echo "$A / $B = $(expr $A / $B)"   ;;
    *)  Error                   ;;
esac
