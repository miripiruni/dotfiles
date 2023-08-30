case $OSTYPE in darwin*)
    brew install zoxide
esac

case $OSTYPE in linux*)
    curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash
esac
