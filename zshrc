# Aliases

alias ls="ls -G"
alias ll="ls -la"

alias light="base16_default-light"
alias dark="base16_default-dark"

# Base 16 Colors

BASE16_SHELL=$HOME/.dotfiles/colors/base16-shell
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

light

# Generic Colourizer

[[ -s "/usr/local/etc/grc.zsh" ]] && source /usr/local/etc/grc.zsh
