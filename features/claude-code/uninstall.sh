case $OSTYPE in darwin*)
    brew uninstall --cask claude-code
esac

case $OSTYPE in linux*)
    rm -f ~/.local/bin/claude
    rm -rf ~/.local/share/claude
esac

