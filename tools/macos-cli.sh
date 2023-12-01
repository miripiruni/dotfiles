# Ensure brew is installed
$HOME/.dotfiles/features/brew/setup.sh

# See https://github.com/ibraheemdev/modern-unix
# TODO: separate feature for each tool
declare -a tools=("bat" # https://github.com/sharkdp/bat
            "bottom" # https://github.com/ClementTsang/bottom
            "dust" # https://github.com/bootandy/dust
            "mongodb-community" # https://docs.mongodb.com/guides/
            "procs" # https://github.com/dalance/procs
            "stats" # https://github.com/exelban/stats
            "task" # https://taskwarrior.org/download/
            "tasksh" # https://gothenburgbitfactory.org/projects/tasksh.html
            "zsh-completion"
            )

brew tap mongodb/brew

for tool in "${tools[@]}"
do
    brew install "$tool"
done

$HOME/.dotfiles/features/alacritty/setup.sh

# start mongo db
brew services start mongodb/brew/mongodb-community

