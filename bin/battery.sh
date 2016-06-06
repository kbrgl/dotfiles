#!/bin/bash
status="$(cat /sys/class/power_supply/BAT0/status)"
capacity="$(cat /sys/class/power_supply/BAT0/capacity)"
if [[ $status == "Charging" ]]; then
  echo -en "%{F#ddffff00}\uf0e7 "
elif [[ $capacity -ge  "85" ]]; then
  echo -en "%{F#dd00ff00}\uf240 "
elif [[ $capacity -ge "65" ]]; then
  echo -en "%{F#dd99ff00}\uf241 "
elif [[ $capacity -ge "45" ]]; then
  echo -en "%{F#ddffffff}\uf242 "
elif [[ $capacity -ge "15" ]]; then
  echo -en "%{F#ddff6600}\uf243 "
elif [[ $capacity -ge "0" ]]; then
  echo -en "%{F#ddff0000}\uf244 "
fi
echo "$capacity%%{F-}"

