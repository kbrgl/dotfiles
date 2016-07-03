#!/bin/bash
nname=$(iwgetid -r)
echo -en "%{A:termite -e nmtui:}%{F#625b3c}\uf1eb%{F-} "
if [[ $nname != "" ]]; then
  echo -n "$nname"
else
  echo -n "Not connected"
fi
echo "%{A}"

