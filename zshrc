# Completion

autoload -U compinit && compinit

# Aliases

alias ls="ls -G"
alias ll="ls -la"

# Generic Colourizer

[[ -s "/usr/local/etc/grc.zsh" ]] && source /usr/local/etc/grc.zsh

# Prompt

setopt prompt_subst
autoload -U promptinit && promptinit

typeset -Ag FX FG BG

FX=(
    reset     "[00m"
    bold      "[01m" no-bold      "[22m"
    italic    "[03m" no-italic    "[23m"
    underline "[04m" no-underline "[24m"
    blink     "[05m" no-blink     "[25m"
    reverse   "[07m" no-reverse   "[27m"
)

# Fill the color maps.
for color in {000..256}; do
  FG[$color]="[38;5;${color}m"
  BG[$color]="[48;5;${color}m"
done

autoload -Uz vcs_info
precmd() {
  vcs_info
}

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr "%{$fg[red]%}"
zstyle ':vcs_info:git*' formats "%{$fg[green]%}%u%b%{$reset_color%} "

setprompt() {
  PROMPT=$'$FG[240]%~ $FG[$1]% ${vcs_info_msg_0_}\n$ '
}

# Base 16 Colors

autoload -U colors && colors

BASE16_SHELL=$HOME/.dotfiles/colors/base16-shell
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

light() {
  base16_default-light
  setprompt 0
}

dark() {
  base16_default-dark
  setprompt 255
}


light

