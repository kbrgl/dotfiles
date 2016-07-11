#!/bin/bash
nname=$(iwgetid -r)
echo -en "%{A:termite -e nmtui:}%{F#7d8fa3}\uf1eb%{F-} "
if [[ $nname != "" ]]; then
  echo -n "$nname"
else
  echo -n "Not connected"
fi
echo "%{A}"

