case $OSTYPE in darwin*)
    brew uninstall tldr
esac

case $OSTYPE in linux*)
    sudo apt -y remove tldr
esac

