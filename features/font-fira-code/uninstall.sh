case $OSTYPE in darwin*)
    brew uninstall font-fira-code
esac

case $OSTYPE in linux*)
    sudo apt -y remove fonts-firacode
esac
