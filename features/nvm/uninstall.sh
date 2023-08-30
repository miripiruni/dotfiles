nvm deactivate

case $OSTYPE in darwin*)
    brew uninstall nvm
esac

# https://github.com/nvm-sh/nvm#uninstalling--removal

rm -rf "$NVM_DIR"
