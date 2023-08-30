case $OSTYPE in darwin*)
    brew uninstall jq
esac

case $OSTYPE in linux*)
    sudo apt-get -y remove jq
esac


