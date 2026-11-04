case $OSTYPE in darwin*)
    brew install nvm
esac

case $OSTYPE in linux*)
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.41.0/install.sh | bash
esac

which nvm
nvm --version

