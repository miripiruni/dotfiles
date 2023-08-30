build:
	bash ./init.sh
	rm -f ~/.zshrc ~/.gitconfig ~/.bashrc ~/.bash_profile
	ln -s ~/.dotfiles/.zshrc ~/.zshrc

	ln -s ~/.dotfiles/features/git/.gitconfig ~/.gitconfig
	ln -s ~/.dotfiles/features/git/.gitignore ~/.gitignore
