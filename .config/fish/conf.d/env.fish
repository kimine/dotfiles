set -g theme_color_scheme gruvbox
set -g theme_date_format "+%Y-%m-%d %a %H:%M:%S"

set -gx EDITOR emacs-nox
set -gx PAGER bat
set -gx MANPAGER "bat -l man -p"

set -gx FZF_COMPLETE 1
set -gx SXHKD_SHELL /usr/bin/sh
fish_add_path $HOME/bin $HOME/.cargo/bin $HOME/.emacs.d/bin $HOME/.local/bin

set -g theme_vcs_ignore_paths /c /d

if type -q rustc
    set rustroot (rustc --print sysroot)
    set -gx RUST_SRC_PATH "$rustroot"/lib/rustlib/src/rust/src/
end

set -gx TERM xterm-256color
set -gx TERMINAL alacritty
set -gx XMODIFIERS @im=fcitx

alias ip="ip -c"
alias em="emacs -nw "
