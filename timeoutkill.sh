#!/bin/bash

if [ "$#" -lt 2 ]; then
    echo "Usage: ${0##*/} <timeout> <program>"
    echo "Where <timeout> is the ammount of time in seconds that computer needs to be idle and <program> is the name of the program that will be killed."
    exit
fi

idle_time=`ioreg -c IOHIDSystem | awk '/HIDIdleTime/ {print int($NF/1000000000); exit}'`

if [ "$1" -le "$idle_time" ]; then
    killall "$2"
fi
