# XDG Base Directories
source $HOME/.dotfiles/.xdg.dirs

# Features
source $HOME/.dotfiles/features/aws/config
source $HOME/.dotfiles/features/brew/config
source $HOME/.dotfiles/features/git/aliases
source $HOME/.dotfiles/features/npm/config
source $HOME/.dotfiles/features/oh-my-zsh/config
source $HOME/.dotfiles/features/shell/alias
source $HOME/.dotfiles/features/shell/config
source $HOME/.dotfiles/features/skotty/config
source $HOME/.dotfiles/features/vim/config
source $HOME/.dotfiles/features/yandex-cloud/config
source $HOME/.dotfiles/features/zsh-history/config
source $HOME/.dotfiles/features/zsh-macos-sessions/config

########################


# For zsh
unsetopt beep
bindkey -v

# TODO: XDG Dirs
zstyle :compinstall filename '/home/miripiruni/.zshrc'

autoload -Uz compinit
compinit
