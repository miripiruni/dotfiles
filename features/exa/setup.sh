# See: https://github.com/ogham/exa#installation

case $OSTYPE in darwin*)
    brew install exa
esac

case $OSTYPE in linux*)
    sudo apt update
    sudo apt -y install exa
esac

which exa
exa --version

