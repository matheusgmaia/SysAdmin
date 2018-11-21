#!/bin/bash
while read LINE
do
    if [ "$LINE" != "" ]; then
        OUT=`/usr/bin/time -f "%e" $LINE`
        #echo $OUT | tail -n -1
        echo $OUT 
    fi
done
