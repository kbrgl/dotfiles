#!/bin/bash
echo -e "%{A:pavucontrol:}%{F#53666f}\uf027%{F-} $(awk -F[][] '{ print $2 }' <(amixer sget Master) | tail -n 1)%{A}"

