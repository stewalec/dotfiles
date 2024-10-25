set fish_greeting

set -g fish_key_bindings fish_vi_key_bindings

set -gx GOPROXY direct
set -gx GOTELEMETRY off
set -gx GOTOOLCHAIN local

set -gx EDITOR vim
set -gx PAGER less
set -gx BROWSER firefox
set -gx TERMINAL foot

set -gx LESSHISTFILE -

# base16 shell
if status --is-interactive
  set BASE16_SHELL "$HOME/.config/base16-shell/"
  source "$BASE16_SHELL/profile_helper.fish"
end
base16-gruvbox-dark-soft

# abbreviations & aliases
abbr c "codium"
abbr tn "tmux new -s"
abbr L --position anywhere --set-cursor "% | less -R"
abbr x "exit"
alias ll "LC_COLLATE=C ls -lAh --group-directories-first"
