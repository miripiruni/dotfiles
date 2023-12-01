CONFIGS_BACKUP_DIR="$XDG_CONFIG_HOME/.configs-backup"
mkdir -p $CONFIGS_BACKUP_DIR
mv $HOME/.zshrc $CONFIGS_BACKUP_DIR/.zshrc
mv $HOME/.gitconfig $CONFIGS_BACKUP_DIR/.gitconfig
mv $HOME/.bashrc $CONFIGS_BACKUP_DIR/.bashrc
mv $HOME/.bash_profile $CONFIGS_BACKUP_DIR/.bash_profile

echo ""
echo "⚠️  Previous configuration files moved to ${CONFIGS_BACKUP_DIR}. After successful setup remove them please"
echo ""

$HOME/.dotfiles/features/aws/setup.sh
$HOME/.dotfiles/features/exa/setup.sh
$HOME/.dotfiles/features/git/setup.sh
$HOME/.dotfiles/features/jq/setup.sh
$HOME/.dotfiles/features/oh-my-zsh/setup.sh
$HOME/.dotfiles/features/ripgrep/setup.sh
$HOME/.dotfiles/features/tldr/setup.sh
$HOME/.dotfiles/features/vim/setup.sh
$HOME/.dotfiles/features/zoxide/setup.sh
