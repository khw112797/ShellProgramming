#!/bin/bash

NET=192.168.10.20
CMD+poweroff
for i in 10 30 20
do
    ssh "NET.$1" "$CMD"
    sleep3
done