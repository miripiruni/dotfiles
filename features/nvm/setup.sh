case $OSTYPE in darwin*)
    brew install nvm
esac

case $OSTYPE in linux*)
    # https://github.com/nvm-sh/nvm#install--update-script
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
esac
