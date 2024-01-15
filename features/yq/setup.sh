case $OSTYPE in darwin*)
    brew install yq
esac

case $OSTYPE in linux*)
    sudo apt update
    sudo apt -y install yq
esac

which yq
yq --version


