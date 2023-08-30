# TODO: XDG dirs
CONFIGS_BACKUP_DIR="~/.configs-backup"
mkdir -p $CONFIGS_BACKUP_DIR
mv ~/.zshrc $CONFIGS_BACKUP_DIR/.zshrc
mv ~/.gitconfig $CONFIGS_BACKUP_DIR/.gitconfig
mv ~/.bashrc $CONFIGS_BACKUP_DIR/.bashrc
mv ~/.bash_profile $CONFIGS_BACKUP_DIR/.bash_profile

echo "⚠️  Previous configuration files moved to ${CONFIGS_BACKUP_DIR}. After successful setup remove them please"

# TODO: XDG dirs
ln -s ~/.dotfiles/.zshrc ~/.zshrc

source ../features/git/setup.sh
