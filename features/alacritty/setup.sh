case $OSTYPE in darwin*)
    brew install --cask alacritty

    mv $XDG_CONFIG_HOME/alacritty/alacritty.yml $XDG_CONFIG_HOME/alacritty/alacritty.yml.default
    ln -s ~/.dotfiles/features/alacritty/alacritty.yml $XDG_CONFIG_HOME/alacritty/alacritty.yml
esac
