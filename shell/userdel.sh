#!/bin/bash

USERLIST=/root/shell/user.list

cat $USERLIST | while read UNAME UPASS
do
    #echo "$UNAME : $UPASS"
    userdel -r $UNAME
    [ $? -eq 0 ] \
        && echo "[  OK  ] $UNAME Delete Complite " \
        || echo "[ Fail ] $UNAME Delete Error"
done
