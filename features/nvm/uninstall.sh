# https://github.com/nvm-sh/nvm#uninstalling--removal

case $OSTYPE in darwin*)
    brew uninstall nvm
esac

case $OSTYPE in linux*)
    nvm unload
    rm -rf "$nvm_dir"
esac

