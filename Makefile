git:
	git config --global user.name "Zamir Ashurbekov"
	git config --global user.email "ashurbekovz23@gmail.com"

macos_install:
	make install_langs
	brew install --cask font-iosevka
	brew install stow
	brew install ripgrep
	brew install neovim
	brew install --cask nikitabobko/tap/aerospace
	brew install jandedobbeleer/oh-my-posh/oh-my-posh
	brew install wget
	brew install bat
	brew install fzf
	brew install repomix
	brew install lazygit
	brew install bruno
	brew install kitty
	brew install yazi 
	brew install ffmpeg 
	brew install sevenzip 
	brew install jq 
	brew install poppler 
	brew install fd 
	brew install zoxide 
	brew install resvg 
	brew install imagemagick

install_langs:
	brew install go@1.24
	brew install golangci-lint
	brew install npm
	brew install python3
	brew install llvm

