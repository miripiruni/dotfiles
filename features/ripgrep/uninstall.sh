case $OSTYPE in darwin*)
    brew uninstall ripprep
esac

case $OSTYPE in linux*)
    sudo apt-get -y remove ripgrep
esac
