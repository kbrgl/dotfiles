#!/bin/bash
nname=$(iwgetid -r)
echo -en "%{A:termite -e nmtui:}\uf1eb "
if [[ $nname != "" ]]; then
  echo -n "$nname"
else
  echo -n "Not connected"
fi
echo "%{A}"

