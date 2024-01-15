case $OSTYPE in darwin*)
    brew uninstall yq
esac

case $OSTYPE in linux*)
    sudo apt -y remove yq
esac
