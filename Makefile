git_authorize:
	git config --global user.name "Zamir Ashurbekov"
	git config --global user.email "derbent_21@outlook.com"

macos_install:
	make install_langs
	brew install stow
	brew install ripgrep
	brew install tmux
	brew install neovim
	brew install --cask font-jetbrains-mono-nerd-font
	brew install --cask nikitabobko/tap/aerospace
	brew install --cask alacritty
	brew install jandedobbeleer/oh-my-posh/oh-my-posh
	brew install wget
	brew install bat
	brew install fzf

install_langs:
	brew install go@1.24
	brew install npm
