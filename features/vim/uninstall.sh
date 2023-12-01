case $OSTYPE in darwin*)
    # https://formulae.brew.sh/formula/vim
    brew uninstall vim
esac

case $OSTYPE in linux*)
    sudo apt -y remove vim
esac
