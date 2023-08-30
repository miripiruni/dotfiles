case $(which brew) in "brew not found")
    # https://brew.sh
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
esac

brew update
