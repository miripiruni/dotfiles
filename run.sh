# XDG Base Directories
source $HOME/.dotfiles/.xdg.dirs

if [[ $OSTYPE == darwin* ]]; then
    # Ensure brew is installed
    $HOME/.dotfiles/features/brew/setup.sh
fi

$HOME/.dotfiles/tools/any-platform.sh

if [[ $OSTYPE == darwin* ]]; then
    ./tools/macos.sh
fi

if [[ $OSTYPE == linux* ]]; then
    ./tools/linux.sh
fi
