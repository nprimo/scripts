#!/usr/bin/env bash 

IFS='
'

APP_ID=$(wmctrl -l | awk -v app=$2 'match($(NF-1)$NF, app) { print $1 }')
if [ -n "$APP_ID" ]; then
    echo Focus "$APP_ID"
    wmctrl -ia "$APP_ID"
else
    echo "$1 is not running yet"
fi
