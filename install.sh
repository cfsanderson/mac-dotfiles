#!/usr/bin/env bash
set -e

# Install Homebrew
if ! command -v brew &>/dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Install stow if needed
brew install stow

# Stow all packages
for dir in bat brew btop colors fastfetch ghostty git karabiner raycast shell tmux vscodium yazi zsh; do
  stow -R -t "$HOME" "$dir"
done

# Install Homebrew packages
brew bundle --file="$HOME/Brewfile"
