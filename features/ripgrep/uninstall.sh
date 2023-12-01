case $OSTYPE in darwin*)
    brew uninstall ripprep
esac

case $OSTYPE in linux*)
    sudo apt -y remove ripgrep
esac
