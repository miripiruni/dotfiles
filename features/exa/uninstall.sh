case $OSTYPE in darwin*)
    brew uninstall exa
esac

case $OSTYPE in linux*)
    sudo apt -y remove exa
esac


