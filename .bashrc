#!/bin/bash
export EDITOR="vim"
export PAGER=less
export LESS="-X -M -E -R"
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export GREP_OPTIONS='--color=auto --exclude="tags" --exclude="TAGS" --exclude="TAGS" --exclude-dir=.git --exclude-dir=.svn --exclude-dir=log'
export GREP_COLOR='1;33'
export LC_ALL='ru_RU.UTF-8'

alias sd='svn diff | more'
alias la='ls -laohF'
alias cl='clear'

# shell
alias :q='exit'
alias ..='cd ..;' # can then do .. .. .. to move up multiple directories.
alias ...='.. ..'

alias cp='cp -i'
alias rm='rm -i'
alias mv='mv -i'

alias mkdir='mkdir -p'
alias md='mkdir'

# editor
alias e='vim'
alias E='f(){ $EDITOR ${*:-.};}; f'

# grep
alias ?='\grep -i'
alias ??='? -nR'
alias ?E='f () { A=($@); A[1]=${A[1]:-./}; ?? ${A[@]} |E - ; }; f ' # grep results into editor

# Reload .bashrc
alias refresh='. ~/.bashrc'

up(){
  local d=""
  limit=$1
  for ((i=1 ; i <= limit ; i++))
    do
      d=$d/..
    done
  d=$(echo $d | sed 's/^\///')
  if [ -z "$d" ]; then
    d=..
  fi
  cd $d
}

if [ $SHLVL == 1 ]; then
    screen -RR -D
fi
