# https://git-scm.com/download/mac

case $OSTYPE in darwin*)
    brew install git
esac

case $OSTYPE in linux*)
    sudo apt update
    sudo apt -y install git-all
esac

which git
git version

CURDIR=$(cd `dirname $0` && pwd)

# TODO: move .gitconfig to feature/git/
ln -s $CURDIR/../../.gitconfig $HOME/.gitconfig
ln -s $CURDIR/.gitignore $HOME/.gitignore
