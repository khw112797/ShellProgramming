#!/bin/bash
#################
#     *
#    **
#   ***
#  ****
# *****
#################
MAX=5
for i in $(seq 1 $MAX)
do
    #echo $i
    NUM=$i
    BLANK_NUM=$(expr $MAX - $NUM)
    #echo "$BLANK_NUM : $NUM"
    for o in $(seq $BLANK_NUM -1 1 )
    do
    echo -n '-'
    done
    
    for p in $(seq $i)
    do
    echo -n '*'
    done

    #엔터(\n) 추가
    echo
done







