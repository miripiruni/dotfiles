source $HOME/.dotfiles/.exports

HISTFILE=~/.zsh/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v

zstyle :compinstall filename '/home/miripiruni/.zshrc'

autoload -Uz compinit
compinit

ZSH=$HOME/lib/oh-my-zsh

ZSH_THEME="blinks"

plugins=(git)

source $ZSH/oh-my-zsh.sh

source $HOME/.dotfiles/.aliases

eval "$(/opt/homebrew/bin/brew shellenv)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
. "$HOME/.cargo/env"
export PATH=/opt/homebrew/bin:$PATH

case $OSTYPE in darwin*)
    # https://cloud.yandex.com/en/docs/cli/operations/install-cli#interactive

    case $(which yc) in !("yc not found"))
        # The next line updates PATH for Yandex Cloud CLI.
        if [ -f '/Users/miripiruni/yandex-cloud/path.bash.inc' ]; then source '/Users/miripiruni/yandex-cloud/path.bash.inc'; fi

        # The next line enables shell command completion for yc.
        if [ -f '/Users/miripiruni/yandex-cloud/completion.zsh.inc' ]; then source '/Users/miripiruni/yandex-cloud/completion.zsh.inc'; fi
    esac

    # https://docs.yandex-team.ru/skotty/quick-start-guide
    case $(which skotty) in !("skotty not found"))
        eval `skotty ssh env`
    esac
esac