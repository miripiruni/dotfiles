# See https://github.com/ibraheemdev/modern-unix
declare -a tools=("bat" # https://github.com/sharkdp/bat
            "exa" # https://github.com/ogham/exa
            "dust" # https://github.com/bootandy/dust
            "ripgrep" # https://github.com/BurntSushi/ripgrep
            "jq" # https://github.com/stedolan/jq
            "bottom" # https://github.com/ClementTsang/bottom
            "procs" # https://github.com/dalance/procs
            "zoxide" # https://github.com/ajeetdsouza/zoxide
            )

case $OSTYPE in darwin*)
    case $(which brew) in "brew not found")
        # https://brew.sh
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    esac

    brew update

    for tool in "${tools[@]}"
    do
        brew install "$tool"
    done
esac