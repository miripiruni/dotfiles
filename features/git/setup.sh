# https://git-scm.com/download/mac

case $OSTYPE in darwin*)
    brew install git
esac

case $OSTYPE in linux*)
    sudo apt-get update
    sudo apt-get -y install git-all
esac

git version

ln -s $HOME/.dotfiles/.gitconfig ~/.gitconfig
ln -s $HOME/.dotfiles/features/git/.gitignore ~/.gitignore
