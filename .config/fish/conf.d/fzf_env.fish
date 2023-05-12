set -gx FZF_COMPLETE 1
set -gx FZF_ENABLE_OPEN_PREVIEW 1
set -gx FZF_DEFAULT_COMMAND 'fd --type f --strip-cwd-prefix'
set -gx FZF_CTRL_T_COMMAND $FZF_DEFAULT_COMMAND
set -gx FZF_CTRL_T_OPTS "--preview 'bat -n --color=always {}' --bind 'ctrl-/:change-preview-window(down|hidden|)'"
set -gx FZF_ALT_C_OPTS "--preview 'exa -T {}' --bind 'ctrl-/:change-preview-window(down|hidden|)'"
set -gx FZF_CTRL_R_OPTS "\
  --preview 'echo {}' --preview-window up:3:hidden:wrap \
  --bind 'ctrl-/:toggle-preview' \
  --bind 'ctrl-y:execute-silent(echo -n {..} | xsel -i -p && xsel -o -p | xsel -i -b)+abort' \
  --color header:bold \
  --header 'Press CTRL-Y to copy command into clipboard'"
