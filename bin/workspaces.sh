#!/bin/bash

chds() {
    echo -en "%{A:bspc desktop -f $1:}$2%{A} "
}

while read -r line; do
    echo -n "%{A4:bspc desktop -f prev:}%{A5:bspc desktop -f next:}"
    case $line in
        W*)
            IFS=':'
            set -- ${line#?}
            while [ $# -gt 0 ]; do
                item="$1"
                name="${item#?}"
                case $item in
                    f*)
                        # free desktop
                        chds $name $name
                        ;;
                    F*)
                        # focused free desktop
                        chds $name "%{F#f5f0f6}$name%{F-}"
                        ;;
                    o*)
                        # occupied desktop
                        chds $name "[$name]"
                        ;;
                    O*)
                        # focused occupied desktop
                        chds $name "%{F#f5f0f6}[$name]%{F-}"
                        ;;
                    u*)
                        # urgent desktop
                        chds $name $name
                        ;;
                    U*)
                        # focused urgent desktop
                        chds $name "%{F#f5f0f6}$name%{F-}"
                        ;;
                esac
                shift
            done
            ;;
    esac
    echo -n "%{A}%{A}"
    echo
done < <(bspc subscribe report)
