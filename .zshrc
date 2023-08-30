# XDG Base Directories
source $HOME/.dotfiles/.xdg.dirs

# Features
source $HOME/.dotfiles/features/brew/config
source $HOME/.dotfiles/features/git/aliases
source $HOME/.dotfiles/features/nvm/config
source $HOME/.dotfiles/features/oh-my-zsh/config
source $HOME/.dotfiles/features/random-string/alias
source $HOME/.dotfiles/features/shell-history/config
source $HOME/.dotfiles/features/shell/config
source $HOME/.dotfiles/features/skotty/config
source $HOME/.dotfiles/features/vim/config
source $HOME/.dotfiles/features/yandex-cloud/config

########################


# For zsh
unsetopt beep
bindkey -v

zstyle :compinstall filename '/home/miripiruni/.zshrc'

autoload -Uz compinit
compinit
