## Default
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/alex/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

## Custom
# prompt
PS1='%F{green}[%n@%m %~]$ %F{white}'
# aliases
alias ls="exa --icons"
alias tree="exa --icons --tree"
# default commands
neofetch
