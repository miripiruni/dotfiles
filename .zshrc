HISTFILE=~/.zsh/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v

zstyle :compinstall filename '/home/miripiruni/.zshrc'

autoload -Uz compinit
compinit

ZSH=$HOME/lib/oh-my-zsh

ZSH_THEME="blinks"

lugins=(git)

source $ZSH/oh-my-zsh.sh

alias sd='svn diff | more'
alias la='ls -lAohF'
alias cl='clear'

alias :q='exit'
alias ..='cd ..;' # can then do .. .. .. to move up multiple directories.
alias ...='.. ..'

alias e='vim'

export EDITOR='vim'
export GREP_OPTIONS='--color=auto'
