#!/usr/bin/env bash

OUTPUT=$(xrandr -q | grep ' connected' | head -n 1 | cut -d ' ' -f1)
LEVEL=$1


if [[ $# -ne 1 ]]; then
    echo "Run command with level between 0 and 1"
    exit 1
fi

xrandr --output ${OUTPUT} --brightness ${LEVEL} 

