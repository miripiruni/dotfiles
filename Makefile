build:
	cd ~
	rm .zshrc .gitconfig .bashrc .bash_profile .pentadactylrc
	ln -s .dotfiles/.zshrc .zshrc
	ln -s .dotfiles/.gitconfig .gitconfig
	ln -s .dotfiles/.bashrc .bashrc
	ln -s .dotfiles/.bashrc .bash_profile
	ln -s .dotfiles/.pentadactylrc .pentadactylrc
