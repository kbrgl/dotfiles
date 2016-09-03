#!/bin/bash
# This script gathers my dotfiles and pastes them into the dotfiles folder.

configuration() {
    # change the following variable to where you store your dotfile binaries
    # eg. ~/bin or /usr/local/bin
    bin=~/bin
}

gather_binaries() {
    cd bin
    for file in $(dir -1); do
        cp "$bin/$file" .
    done
    cd ..
}

gather_configs() {
    cp ~/.config/admiral.d/admiral.toml admiral.d/
    cp ~/.config/compton.conf .
    cp ~/.config/nvim/init.vim nvim/
    cp ~/.config/gtk-3.0/gtk.css gtk-3.0/
    cp ~/.config/dunst/dunstrc dunst/
    cp ~/.config/termite/* termite/
    cp ~/.config/bspwm/bspwmrc bspwm/
    cp ~/.config/sxhkd/sxhkdrc sxhkd/
    cp ~/.weechat/weechat.conf .
}

git_push() {
    git add -A
    git commit -m "" -e
    git push origin master
}

configuration
gather_binaries
gather_configs

if [[ $1 == "-p" ]] || [[ $1 == "--push" ]]; then
    git_push
fi
