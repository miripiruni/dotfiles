case $OSTYPE in darwin*)
    brew uninstall jq
esac

case $OSTYPE in linux*)
    sudo apt -y remove jq
esac


