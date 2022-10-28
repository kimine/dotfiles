set -g theme_color_scheme gruvbox
set -g theme_date_format "+%Y-%m-%d %a %H:%M:%S"
# set -g theme_powerline_fonts no

set -gx EDITOR emacs

set PATH $HOME/bin $HOME/.cargo/bin $PATH $HOME/.emacs.d/bin

set -g theme_vcs_ignore_paths /c /d

if type -q rustc
    set rustroot (rustc --print sysroot)
    set -gx RUST_SRC_PATH "$rustroot"/lib/rustlib/src/rust/src/
end

alias ip="ip -c"
alias em="emacs"
