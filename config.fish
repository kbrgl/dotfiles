if status is-interactive
    # Commands to run in interactive sessions can go here
    # Git commit
    alias gc="git commit"

    # Git pull with rebase
    alias gpr="git pull --rebase"

    # Git status
    alias gst="git status"

    # Git switch branch
    alias gs="git switch"

    # Git switch -c
    alias gsc="git switch -c"

    # Git stash
    alias gst="git stash"

    # Git stash pop
    alias gsp="git stash pop"

    # Git switch main
    alias gsm="git switch main"

    # Git push (using 'gpush' to avoid ambiguity with pull)
    alias gps="git push"

    # Git merge main
    alias gmm="git merge main"
end

starship init fish | source
