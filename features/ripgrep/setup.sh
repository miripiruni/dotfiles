case $OSTYPE in darwin*)
    brew install ripgrep
esac

case $OSTYPE in linux*)
    sudo apt update
    sudo apt install ripgrep
esac

which rg
rg --version
