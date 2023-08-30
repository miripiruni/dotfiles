rm -f ~/.zshrc ~/.gitconfig ~/.bashrc ~/.bash_profile
# TODO: XDG dirs
ln -s ~/.dotfiles/.zshrc ~/.zshrc

source ../features/git/setup.sh
