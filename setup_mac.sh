echo "installing brew"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo "Installing zsh"
brew install zsh
echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "installing python 2"
brew install python
echo "installing cmake"
brew install cmake
echo "installing vim"
brew install vim
echo "installing Vundle for vim"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo "installing plugins"
vim +PluginInstall +qall
echo "Install go and node manually, then run ~/.vim/bundle/YouCompleteMe/install.py --clang-completer --gocode-completer --tern-completer"


