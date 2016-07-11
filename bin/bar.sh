#!/bin/bash

pkill admiral
pkill lemonbar

font="gohufont:size=10"
fallback_font="FontAwesome:size=8"
background="#00121315"
foreground="#bcbdc3"
a=30

if [[ $1 == "-f" ]]; then
    admiral | lemonbar -a $a -g 1920x40+0+0 -f $font -f $fallback_font -B $background -F $foreground | sh
else
    admiral | lemonbar -a $a -g 1880x40+10+10 -f $font -f $fallback_font -B $background -F $foreground | sh
fi
