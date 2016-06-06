#!/bin/bash
nname=$(iwgetid -r)
echo -en "%{A:connman-gtk:}\uf1eb "
if [[ $nname != "" ]]; then
  echo -n "$nname"
else
  echo -n "Not connected"
fi
echo "%{A}"

