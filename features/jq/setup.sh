case $OSTYPE in darwin*)
    brew install jq
esac

case $OSTYPE in linux*)
    sudo apt-get update
    sudo apt-get -y install jq
esac


