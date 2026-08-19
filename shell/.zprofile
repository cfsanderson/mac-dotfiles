eval "$(/opt/homebrew/bin/brew shellenv zsh)"

# Fallback in case ~/.zshenv (shell/.zshenv) hasn't been stowed on this
# machine yet — harmless no-op once it has, since .zshenv always runs first.
export ZDOTDIR="$HOME/.config/zsh"
