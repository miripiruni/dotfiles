# https://github.com/tonsky/FiraCode/wiki/Installing

case $OSTYPE in darwin*)
    brew install font-fira-code
esac

case $OSTYPE in linux*)
    sudo apt update
    sudo apt -y install fonts-firacode
esac
