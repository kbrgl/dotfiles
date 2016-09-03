#!/bin/bash

if [[ $1 == "" ]]; then
    echo "Please pass in the location of your user 'bin' folder"
    exit 1
fi

cd bin
for file in $(dir -1); do
    cp "$1/$file" .
done
cd ..

cp ~/.config/admiral.d/admiral.toml admiral.d/
cp ~/.config/compton.conf .
cp ~/.config/nvim/init.vim nvim/
cp ~/.config/gtk-3.0/gtk.css gtk-3.0/
cp ~/.config/dunst/dunstrc dunst/
cp ~/.config/termite/* termite/
cp ~/.config/bspwm/bspwmrc bspwm/
cp ~/.config/sxhkd/sxhkdrc sxhkd/
cp ~/.weechat/weechat.conf .

