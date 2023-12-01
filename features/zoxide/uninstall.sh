case $OSTYPE in darwin*)
    brew uninstall zoxide
esac

case $OSTYPE in linux*)
    rm -i "$(which zoxide)"
esac
