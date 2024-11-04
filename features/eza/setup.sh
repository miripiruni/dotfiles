# See: https://github.com/ogham/eza#installation

case $OSTYPE in darwin*)
    brew install eza
esac

case $OSTYPE in linux*)
    sudo apt update
    sudo apt -y install eza
esac

which eza
eza --version

