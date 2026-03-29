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
for dir in bat brew btop colors cursor fastfetch ghostty git karabiner kitty mpd raycast rmpc shell tmux vscodium yazi zsh; do
  stow -R -t "$HOME" "$dir"
done

# MPD needs ~/.mpdconf as a fallback for launchd (XDG not in launchd env)
[ ! -e "$HOME/.mpdconf" ] && ln -s "$HOME/.config/mpd/mpd.conf" "$HOME/.mpdconf"

# Install Homebrew packages
brew bundle --file="$HOME/Brewfile"

# Start MPD as a launchd service
brew services start mpd

# Clone nvim config (managed as a separate repo)
if [ ! -d "$HOME/.config/nvim" ]; then
  git clone git@github.com:cfsanderson/kickstart-cfs.nvim.git "$HOME/.config/nvim"
fi
