# https://git-scm.com/download/mac

case $OSTYPE in darwin*)
    brew install git
esac

case $OSTYPE in linux*)
    sudo apt update
    sudo apt -y install git-all
esac

which git
git version

ln -s $HOME/.dotfiles/.gitconfig ~/.gitconfig
ln -s $HOME/.dotfiles/features/git/.gitignore ~/.gitignore
