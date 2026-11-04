case $OSTYPE in darwin*)
    AEROSPACE_CONFIG_DIR="${XDG_CONFIG_HOME}/aerospace"

    if [ ! -d "$AEROSPACE_CONFIG_DIR" ]; then
        mkdir $AEROSPACE_CONFIG_DIR
        echo "Directory $AEROSPACE_CONFIG_DIR created."
    fi

    AEROSPACE_CONFIG_SYMBOLICLINK="$AEROSPACE_CONFIG_DIR/aerospace.toml"

    if [ ! -L "$AEROSPACE_CONFIG_SYMBOLICLINK" ]; then
        ln -s $HOME/.dotfiles/features/aerospace/aerospace.toml $AEROSPACE_CONFIG_SYMBOLICLINK
        echo "SymLink $AEROSPACE_CONFIG_SYMBOLICLINK created."
    fi

    ls -la $AEROSPACE_CONFIG_SYMBOLICLINK
esac
