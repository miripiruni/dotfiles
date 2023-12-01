rm $HOME/.zshrc
rm -fr $XDG_DATA_HOME/oh-my-zsh

# https://github.com/ohmyzsh/ohmyzsh#uninstalling-oh-my-zsh
command env ZSH="$ZSH" sh "$ZSH/tools/uninstall.sh"

