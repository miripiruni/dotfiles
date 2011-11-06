ZSH=$HOME/lib/oh-my-zsh

ZSH_THEME="blinks"

lugins=(git)

source $ZSH/oh-my-zsh.sh

# alias
alias sd='svn diff | more'
alias la='ls -lAohF'
alias cl='clear'

alias :q='exit'
alias ..='cd ..;' # can then do .. .. .. to move up multiple directories.
alias ...='.. ..'

# editor
alias e='vim'

export EDITOR='vim'
export GREP_OPTIONS='--color=auto'
