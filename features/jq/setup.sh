case $OSTYPE in darwin*)
    brew install jq
esac

case $OSTYPE in linux*)
    sudo apt update
    sudo apt -y install jq
esac

which jq
jq --version


