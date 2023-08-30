case $OSTYPE in darwin*)
    brew install ripgrep
esac

case $OSTYPE in linux*)
    sudo apt-get update
    sudo apt-get install ripgrep
esac
