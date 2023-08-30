case $OSTYPE in darwin*)
    brew install --cask alacritty

    # TODO: XDG dirs
    mv ~/.config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml.default
    ln -s ~/.dotfiles/features/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
esac
