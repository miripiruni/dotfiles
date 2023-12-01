# https://ohmyz.sh/#install
OH_MY_ZSH_DIR="$XDG_DATA_HOME/oh-my-zsh"

CONFIGS_BACKUP_DIR="$HOME/.configs-backup"
mv ~/.zshrc $CONFIGS_BACKUP_DIR/.zshrc.before_miri_dotfiles
echo ""
echo "⚠️  Previous configuration files moved to ${CONFIGS_BACKUP_DIR}. After successful setup remove them please"
echo ""

ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

#ZSH="$OH_MY_ZSH_DIR" sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
