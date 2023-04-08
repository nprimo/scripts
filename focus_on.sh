#!/usr/bin/env bash 

IFS='
'

APP_ID=$(wmctrl -l | awk -F"NF" '{print $NF}' | grep -E "$2" | awk '{print $1}')
if [ -n "$APP_ID" ]; then
    echo Focus "$APP_ID"
    wmctrl -ia "$APP_ID"
else
    echo Launch "$1"
    $1 &
fi
