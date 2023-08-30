case $OSTYPE in darwin*)
    brew uninstall git
esac

case $OSTYPE in linux*)
    sudo apt-get -y remove git-all
esac

rm $HOME/.gitconfig
rm $HOME/.gitignore
