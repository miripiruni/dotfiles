declare -a tools=("git" # https://git-scm.com/download/mac
            "vim" # https://formulae.brew.sh/formula/vim

            # See https://github.com/ibraheemdev/modern-unix
            "bat" # https://github.com/sharkdp/bat
            "exa" # https://github.com/ogham/exa
            "dust" # https://github.com/bootandy/dust
            "ripgrep" # https://github.com/BurntSushi/ripgrep
            "jq" # https://github.com/stedolan/jq
            "bottom" # https://github.com/ClementTsang/bottom
            "procs" # https://github.com/dalance/procs
            "zoxide" # https://github.com/ajeetdsouza/zoxide
            "nvm" # https://github.com/nvm-sh/nvm
            "mongodb-community" # https://docs.mongodb.com/guides/
            "task" # https://taskwarrior.org/download/
            )

case $OSTYPE in darwin*)
    case $(which brew) in "brew not found")
        # https://brew.sh
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    esac

    brew update
    brew tap mongodb/brew

    for tool in "${tools[@]}"
    do
        brew install "$tool"
    done

    mkdir ~/.nvm

    # start mongo db
    brew services start mongodb/brew/mongodb-community


    https://ohmyz.sh/#install
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
esac
