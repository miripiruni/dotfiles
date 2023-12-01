case $OSTYPE in darwin*)
    brew uninstall awscli
esac

case $OSTYPE in linux*)
    sudo apt -y remove awscli
esac

