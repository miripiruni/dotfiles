which -s brew

if [[ $? != 0 ]]; then
    # https://brew.sh
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew update
