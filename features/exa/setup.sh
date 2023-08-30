case $OSTYPE in darwin*)
    brew install exa
esac

case $OSTYPE in linux*)
    sudo apt update
    sudo apt -y install exa
esac


