function tms -d "tmux session"
    if test -n "$TMUX"
        tmux ls -F "#{session_name}" | fzf | read -l result; and tmux switchc -t "$result"
        return
    end
    tmux ls -F "#{session_name}" | fzf | read -l result; and tmux at -t "$result"
end
