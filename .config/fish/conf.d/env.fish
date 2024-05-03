set -g theme_color_scheme gruvbox
set -g theme_date_format "+%Y-%m-%d %a %H:%M:%S"

#set -gx EDITOR "nvim"
set -gx EDITOR "emacs -nw"
set -gx PAGER bat
set -gx CHEAT_USE_FZF true
set -Ux TERM alacritty

set -gx SXHKD_SHELL /usr/bin/sh
set -gx GPG_TTY (tty)

fish_add_path $HOME/bin $HOME/.cargo/bin $HOME/.config/emacs/bin
fish_add_path $HOME/.local/bin /usr/local/bin $HOME/.deno/bin

set -g theme_vcs_ignore_paths /c /d

if type -q rustc
    set rustroot (rustc --print sysroot)
    set -gx RUST_SRC_PATH "$rustroot"/lib/rustlib/src/rust/src/
end

set -gx TERM xterm-256color
set -gx TERMINAL alacritty

alias ip="ip -c"
alias em="emacs -nw"
alias hx="helix"
if type -q lsd
    alias ls='lsd'
    alias l='ls -l'
    alias la='ls -a'
    alias lla='ls -la'
    alias lt='ls --tree'
end
set -gx FZF_COMPLETE 1
