case $OSTYPE in darwin*)
    brew install awscli
esac

case $OSTYPE in linux*)
    sudo apt update
    sudo apt -y install awscli
esac

which aws
aws --version

