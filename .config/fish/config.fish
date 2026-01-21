set fish_greeting ""
set -g fish_key_bindings fish_vi_key_bindings

eval "$(/opt/homebrew/bin/brew shellenv)"

# abbreviations and aliases
abbr L --position anywhere --set-cursor "% | less -R"
abbr x "exit"
alias ll "ls -lAh"
