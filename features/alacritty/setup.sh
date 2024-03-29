CURDIR=$(cd `dirname $0` && pwd)

# Depends on Fira Code Font
$CURDIR/../font-fira-code/setup.sh

case $OSTYPE in darwin*)
    brew install --cask alacritty

    ALACRITTY_CONFIG_DIR="$XDG_CONFIG_HOME/alacritty"
    ALACRITTY_CONFIG_FILE="$ALACRITTY_CONFIG_DIR/alacritty.yml"

    if [ -d "$ALACRITTY_CONFIG_DIR" ]; then
        if [ -f "$ALACRITTY_CONFIG_FILE" ]; then
            mv $ALACRITTY_CONFIG_FILE $XDG_CONFIG_HOME/alacritty/alacritty.yml.default
        fi
    else
        mkdir $ALACRITTY_CONFIG_DIR
        echo "Directory $ALACRITTY_CONFIG_DIR created."
    fi

    ln -s $CURDIR/alacritty.yml $ALACRITTY_CONFIG_FILE
esac
