source $HOME/.dotfiles/.exports

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

plugins=(git)

source $ZSH/oh-my-zsh.sh

source $HOME/.dotfiles/.aliases
###-begin-bem-completion-###
#
# bem command completion script
#
# Installation: bem completion >> ~/.bashrc  (or ~/.zshrc)
# Or, maybe: bem completion > /usr/local/etc/bash_completion.d/bem
#

COMP_WORDBREAKS=${COMP_WORDBREAKS/=/}
COMP_WORDBREAKS=${COMP_WORDBREAKS/@/}
export COMP_WORDBREAKS

if complete &>/dev/null; then
  _bem_completion () {
    local si="$IFS"
    IFS=$'\n' COMPREPLY=($(COMP_CWORD="$COMP_CWORD" \
                           COMP_LINE="$COMP_LINE" \
                           COMP_POINT="$COMP_POINT" \
                           bem completion -- "${COMP_WORDS[@]}" \
                           2>/dev/null)) || return $?
    IFS="$si"
  }
  complete -F _bem_completion bem
elif compctl &>/dev/null; then
  _bem_completion () {
    local cword line point words si
    read -Ac words
    read -cn cword
    let cword-=1
    read -l line
    read -ln point
    si="$IFS"
    IFS=$'\n' reply=($(COMP_CWORD="$cword" \
                       COMP_LINE="$line" \
                       COMP_POINT="$point" \
                       bem completion -- "${words[@]}" \
                       2>/dev/null)) || return $?
    IFS="$si"
  }
  compctl -K _bem_completion bem
fi
###-end-bem-completion-###
