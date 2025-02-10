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

install_langs:
	brew install go@1.22
	brew install npm
