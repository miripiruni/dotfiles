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


export EDITOR='vim'
export GREP_OPTIONS='--color=auto'

source $HOME/dotfiles/aliases
