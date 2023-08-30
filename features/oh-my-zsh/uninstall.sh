rm $HOME/.zshrc
# TODO: XDG Dirs
rm -fr $HOME/.local/share/oh-my-zsh

# https://github.com/ohmyzsh/ohmyzsh#uninstalling-oh-my-zsh
command env ZSH="$ZSH" sh "$ZSH/tools/uninstall.sh"

