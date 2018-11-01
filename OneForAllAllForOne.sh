cd ~
############
# Homebrew #
############
# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update && brew upgrade

#########################
# Command Line Programs #
#########################
# GNU version of sed
brew install gnu-sed --with-default-names

##########
# Coding #
##########
# mkcd
cat <<EOT >>~/.zshrc

mkcd () {
    mkdir -p -- "\$@" && cd "\$@"
}
EOT

# git
brew install git

# Visual Studio Code
brew cask install visual-studio-code

# Hyper.js
brew cask install hyper

# Roboto Mono Powerline
brew cask install homebrew/cask-fonts/font-roboto-mono-for-powerline
# Fira Code Nerd Font
brew cask install font-firacode-nerd-font

# zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "fpath=(/usr/local/share/zsh-completions $fpath)" >> .zshrc

git clone https://github.com/geometry-zsh/geometry.git $HOME/.oh-my-zsh/custom/themes/geometry

# set hyper to load zsh on default
python set_hyper.py

# SourceTree
brew cask install sourcetree

# PyCharm
brew cask install pycharm-ce

# Node.js and npm
brew install node

###############
# Application #
###############
# Microsoft Office
brew cast install microsoft-office

# Google Chrome
brew cask install google-chrome

###########
# Utility #
###########
# Logitech Options
brew cask install homebrew/cask-drivers/logitech-options

# keka
brew cask install keka

# transmission
brew cask install transmission

#################
# Entertainment #
#################
# Spotify
brew cask install spotify

# Plex Media Server
brew cask install plex-media-server
brew cask install plex-media-player

#########
# Ghost #
#########
npm install ghost-cli@latest -g
brew cask install ghost
