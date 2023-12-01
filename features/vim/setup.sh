case $OSTYPE in darwin*)
    # https://formulae.brew.sh/formula/vim
    brew install vim
esac

case $OSTYPE in linux*)
    sudo apt update
    sudo apt -y install vim
esac

which vim
vim --version
