#!/bin/bash
# This script gathers my dotfiles and pastes them into the dotfiles folder.

# change the following variable to where you store your dotfile binaries
# eg. ~/bin or /usr/local/bin
bin=~/bin

green() {
    GREEN='\033[0;34m'
    printf "${GREEN}${1}${NC}\n"
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

diff_dotfiles() {
    cd bin
    for file in $(dir -1); do
        green "$bin/$file"
        diff "$bin/$file" ./$file
    done
    cd ..

    green "~/.config/admiral.d/admiral.toml"
    diff ~/.config/admiral.d/admiral.toml admiral.d/admiral.toml
    green "~/.config/compton.conf"
    diff ~/.config/compton.conf compton.conf
    green "~/.config/nvim/init.vim"
    diff ~/.config/nvim/init.vim nvim/init.vim
    green "~/.config/gtk-3.0/gtk.css"
    diff ~/.config/gtk-3.0/gtk.css gtk-3.0/gtk.css
    green "~/.config/dunst/dunstrc"
    diff ~/.config/dunst/dunstrc dunst/dunstrc
    for file in $(dir -1 ~/.config/termite); do
        green "~/.config/termite/$file"
        diff ~/.config/termite/$file termite/$file
    done
    green "~/.config/bspwm/bspwmrc"
    diff ~/.config/bspwm/bspwmrc bspwm/bspwmrc
    green "~/.config/sxhkd/sxhkdrc"
    diff ~/.config/sxhkd/sxhkdrc sxhkd/sxhkdrc
    green "~/.weechat/weechat.conf"
    diff ~/.weechat/weechat.conf weechat.conf
}

if [[ $1 == "-d" ]] || [[ $1 == "--diff" ]]; then
    diff_dotfiles
    exit
fi

gather_binaries
gather_configs

if [[ $1 == "-p" ]] || [[ $1 == "--push" ]]; then
    git_push
fi
