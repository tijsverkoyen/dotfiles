#!/bin/sh
echo "Setting up your Mac..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/tijs/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

echo "⚠️ You should install Prey manually, go to https://preyproject.com"
read -p "Continue? press enter"

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Make ZSH the default shell environment
chsh -s $(which zsh)

# Add the oh-my-zsh theme we want to use in the themes folder thru a link
mkdir -p  ~/.oh-my-zsh/themes
ln -s ~/dotfiles/zsh/tijs.zsh-theme ~/.oh-my-zsh/themes/tijs.zsh-theme

# Set macOS preferences
# We will run this last because this will reload the shell
source .macos
