case $OSTYPE in darwin*)
    ./tools/macos.sh
esac

case $OSTYPE in linux*)
    ./tools/linux.sh
esac
