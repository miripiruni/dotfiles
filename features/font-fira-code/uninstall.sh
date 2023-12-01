case $OSTYPE in darwin*)
    brew uninstall --cask font-fira-code
esac

case $OSTYPE in linux*)
    sudo apt -y remove fonts-firacode
esac
