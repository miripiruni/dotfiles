# "tldr" # https://tldr.sh

case $OSTYPE in darwin*)
    brew install tldr
esac

case $OSTYPE in linux*)
    sudo apt update
    sudo apt -y install tldr
esac

tldr --version
