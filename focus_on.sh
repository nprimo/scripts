#!/usr/bin/env bash 

IFS='
'

if [ $(wmctrl -l | grep -c "$2") -ne 0 ]
then
    echo Focus "$2"
    wmctrl -a "$2"
else
    echo Launch "$1"
    $1 &
fi
