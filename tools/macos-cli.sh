# Ensure brew is installes
source ../features/brew/setup.sh

# See https://github.com/ibraheemdev/modern-unix
declare -a tools=("bat" # https://github.com/sharkdp/bat
            "bottom" # https://github.com/ClementTsang/bottom
            "dust" # https://github.com/bootandy/dust
            "exa" # https://github.com/ogham/exa
            "git" # https://git-scm.com/download/mac
            "jq" # https://github.com/stedolan/jq
            "mongodb-community" # https://docs.mongodb.com/guides/
            "nvm" # https://github.com/nvm-sh/nvm
            "procs" # https://github.com/dalance/procs
            "ripgrep" # https://github.com/BurntSushi/ripgrep
            "stats" # https://github.com/exelban/stats
            "task" # https://taskwarrior.org/download/
            "tasksh" # https://gothenburgbitfactory.org/projects/tasksh.html
            "tldr" # https://tldr.sh
            "vim" # https://formulae.brew.sh/formula/vim
            "zoxide" # https://github.com/ajeetdsouza/zoxide
            "zsh-completion"
            )

brew tap mongodb/brew

for tool in "${tools[@]}"
do
    brew install "$tool"
done

source ../features/nvm/config

# start mongo db
brew services start mongodb/brew/mongodb-community

source ../features/oh-my-zsh/setup.sh
