#Sets up new mac as I like it

setup: 
	@ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	@xcode-select --install
	@brew install python
	@brew install cmake
	@brew install node
	@brew install go
	@git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	@vim +PluginInstall +qall

capitan:
	@sudo chown $(whoami):admin /usr/local && sudo chown -R $(whoami):admin /usr/local

capitanfail:
	@sudo mkdir /usr/local && sudo chflags norestricted /usr/local && sudo chown $(whoami):admin /usr/local && sudo chown -R $(whoami):admin /usr/local
