function tms
    if test -n "$TMUX"
        tmux choose-tree -s
        return
    end
    set -l sessnum (tmux ls | wc -l)
    if test $sessnum -eq 0
        tmux
        return
    end
    set -l sessname (tmux ls | fzf | gawk  -F: '{print$1}')
    if test -n "$sessname"
        tmux at -t $sessname
    end
end
