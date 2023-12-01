case $OSTYPE in darwin*)
    brew uninstall git
esac

case $OSTYPE in linux*)
    sudo apt -y remove git-all
esac

rm $HOME/.gitconfig
rm $HOME/.gitignore
