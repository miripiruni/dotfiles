#!/bin/bash
export EDITOR="vim"
export PAGER=less
export LESS="-X -M -E -R"
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export GREP_OPTIONS='--color=auto --exclude="tags" --exclude="TAGS" --exclude="TAGS" --exclude-dir=.git --exclude-dir=.svn --exclude-dir=log'
export GREP_COLOR='1;33'
export LC_ALL='ru_RU.UTF-8'


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

source $HOME/.dotfiles/aliases
