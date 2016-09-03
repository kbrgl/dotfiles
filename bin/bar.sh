#!/bin/bash

pkill admiral

font="gohufont:size=10"
fallback_font="FontAwesome:size=8"
background="#cc111314"
foreground="#bcbdc3"
a=30

monitors=$(xrandr | grep -o "^.* connected" | sed "s/ connected//")

if [[ $1 == "-f" ]]; then
    # full width, no padding
    x=1920
    y=40
    x_offset=0
    y_offset=0
elif [[ $1 == "-h" ]]; then
    # half width
    x=900
    y=40
    x_offset=500
    y_offset=15
else
    x=1880
    y=40
    x_offset=20
    y_offset=15
fi

for m in $monitors; do
    admiral | lemonbar -a $a -g "${x}x${y}+${x_offset}+${y_offset}" -f $font -f $fallback_font -B $background -F $foreground | sh &
    # the following line gets the width of the current monitor
    monitor_width=$(xrandr | grep '*' | ruby -e "puts gets.strip.split[0].split('x')" | head -n 1)
    let x_offset+=$monitor_width
    echo "Started bar on $m"
done
