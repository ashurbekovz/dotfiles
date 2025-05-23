git:
	git config --global user.name "Zamir Ashurbekov"
	git config --global user.email "ashurbekovz23@gmail.com"

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
	brew install repomix
	brew install lazygit
	brew install bruno

start_tabby:
	tabby serve --device metal

install_langs:
	brew install go@1.24
	brew install golangci-lint
	brew install npm
	brew install python3
	brew install llvm

