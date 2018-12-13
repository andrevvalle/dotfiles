source $HOME/.dotfiles/common/functions.sh
msg_install “Installing Brew Cask”

# homebrew-cask
brew tap phinze/homebrew-cask
brew install brew-cask

# other
brew cask install alfred
brew cask install spectacle
brew cask install mou
brew cask install skype
brew cask install spotify
brew cask install franz
brew cask install caffeine
