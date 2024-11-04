# XDG Base Directories
source $HOME/.dotfiles/.xdg.dirs

case $OSTYPE in darwin*)
    # Ensure brew is installed
    $HOME/.dotfiles/features/brew/setup.sh
esac

$HOME/.dotfiles/tools/any-platform.sh

case $OSTYPE in darwin*)
    ./tools/macos.sh
esac

case $OSTYPE in linux*)
    ./tools/linux.sh
esac
