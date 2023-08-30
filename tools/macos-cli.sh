# Ensure brew is installes
$HOME/.dotfiles/features/brew/setup.sh

# See https://github.com/ibraheemdev/modern-unix
declare -a tools=("bat" # https://github.com/sharkdp/bat
            "bottom" # https://github.com/ClementTsang/bottom
            "dust" # https://github.com/bootandy/dust
            "mongodb-community" # https://docs.mongodb.com/guides/
            "procs" # https://github.com/dalance/procs
            "stats" # https://github.com/exelban/stats
            "task" # https://taskwarrior.org/download/
            "tasksh" # https://gothenburgbitfactory.org/projects/tasksh.html
            "tldr" # https://tldr.sh
            "zsh-completion"
            )

brew tap mongodb/brew

for tool in "${tools[@]}"
do
    brew install "$tool"
done

$HOME/.dotfiles/features/alacritty/setup.sh
$HOME/.dotfiles/features/exa/setup.sh
$HOME/.dotfiles/features/git/setup.sh
$HOME/.dotfiles/features/jq/setup.sh
$HOME/.dotfiles/features/nvm/setup.sh
$HOME/.dotfiles/features/oh-my-zsh/setup.sh
$HOME/.dotfiles/features/ripgrep/setup.sh
$HOME/.dotfiles/features/vim/setup.sh
$HOME/.dotfiles/features/zoxide/setup.sh

# start mongo db
brew services start mongodb/brew/mongodb-community

