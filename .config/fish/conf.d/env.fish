#go env -w GOPROXY="https://goproxy.cn,direct"

set -g theme_color_scheme gruvbox
set -g theme_date_format "+%Y-%m-%d %a %H:%M:%S"
# set -g theme_powerline_fonts no

set -gx EDITOR emacs

set PATH $HOME/bin $HOME/.cargo/bin $PATH $HOME/.emacs.d/bin

alias ip="ip -c"
