case $OSTYPE in darwin*)
    brew uninstall eza
esac

case $OSTYPE in linux*)
    sudo apt -y remove eza
esac


