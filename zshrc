# Completion

autoload -U compinit && compinit

# Aliases

alias ll="ls -la"

# Generic Colourizer

[[ -s "/usr/local/etc/grc.zsh" ]] && source /usr/local/etc/grc.zsh

# Base 16 Colors

autoload -U colors && colors

BASE16_SHELL=$HOME/.dotfiles/colors/base16-shell
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

light() {
  base16_tomorrow
  PROMPT=$'$FG[240]%~ ${vcs_info_msg_0_}\n$ $FG[0]%'
}

dark() {
  base16_tomorrow-night
  PROMPT=$'$FG[240]%~ ${vcs_info_msg_0_}\n$ $FG[255]%'
}

# Set colors only if they haven't already been set

if [[ $(readlink "$HOME/.base16_theme") =~ base16-tomorrow-night ]];
then
  dark
else
  light
fi

# Prompt

setopt prompt_subst
autoload -U promptinit && promptinit

typeset -Ag FX FG BG

autoload -Uz vcs_info
precmd() {
  vcs_info
}

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr "%{$fg[red]%}"
zstyle ':vcs_info:git*' formats "%{$fg[green]%}%u%b%{$reset_color%} "

# Coreutils

PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

# FZF

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND="ag -g \"\""

# ssh-agent

if [ -z "$SSH_AUTH_SOCK" ] ; then
  eval `ssh-agent`
fi

# gpg

export GPG_TTY=$(tty)
