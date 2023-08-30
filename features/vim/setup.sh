case $OSTYPE in darwin*)
    # https://formulae.brew.sh/formula/vim
    brew install vim
esac

case $OSTYPE in linux*)
    sudo apt-get update
    sudo apt-get -y install vim
esac
