# Depends on Fira Code Font
../font-fira-code/uninstall.sh

brew uninstall alacritty

echo "Removing configuration directory: ${HOME}/.config/alacritty…"
rm -fr $XDG_CONFIG_HOME/alacritty
