#!/bin/bash
oo="\uf10c"
c="\uf111"
o="\uf1db"

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
                        chds $name $o
                        ;;
                    F*)
                        # focused free desktop
                        chds $name $c
                        ;;
                    o*)
                        # occupied desktop
                        chds $name $oo
                        ;;
                    O*)
                        # focused occupied desktop
                        chds $name $c
                        ;;
                    u*)
                        # urgent desktop
                        echo "%{F#00FF00}"
                        chds $name $o
                        echo "%{F-}"
                        ;;
                    U*)
                        # focused urgent desktop
                        chds $name $c
                        ;;
                esac
                shift
            done
            ;;
    esac
    echo -n "%{A}%{A}"
    echo
done < <(bspc subscribe report)
