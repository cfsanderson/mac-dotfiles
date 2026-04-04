#===============================================================================
#                             ___
#                      ____ _/ (_)___ _________  _____
#                     / __ `/ / / __ `/ ___/ _ \/ ___/
#                    / /_/ / / / /_/ (__  )  __(__  )
#                    \__,_/_/_/\__,_/____/\___/____/
#
#===============================================================================
#                               @cfsanderson

# General
alias bbd='brew bundle dump -f'
alias brewup='brew update && brew upgrade && brew cleanup'
alias brew='env PATH="${PATH//.asdf/shims:/}" brew'
alias code='codium'
alias dropbox='cd /Users/caleb/Library/CloudStorage/Dropbox/'
alias gs='git switch'
alias h2='npx shopify hydrogen'
alias home='cd $HOME && clear && fastfetch'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder'
alias hidepaths='defaults write com.apple.finder _FXShowPosixPathInTitle -bool false; killall Finder'
alias icloud='cd ~/iCloud/com~apple~CloudDocs'
alias l='ls -lA'
alias myhub='open https://github.com/cfsanderson'
alias mkcdir=mkdir_cd
mkdir_cd() {
    mkdir -p -- "$1" &&
    cd -P -- "$1" &&
    ls -la
}
alias music='rmpc; rmpc stop'
alias notes='cd $HOME/Projects/.notes && gl && code .'
fastfetch() {
    local gallery=(~/.config/fastfetch/star-wars-ascii/*.txt)
    local logo=${gallery[$RANDOM % ${#gallery[@]}]}
    command fastfetch --file "$logo" "$@"
}
alias nv='nvim'
alias protondrive='cd /Users/caleb/Library/CloudStorage/ProtonDrive-me@calebsanderson.com'
alias sb='cd $HOME/Projects/second-brain/'
alias sbo='cd $HOME/Projects/second-brain/ && nv .'
alias showfiles='defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder'
alias showpaths='defaults write com.apple.finder _FXShowPosixPathInTitle -bool true; killall Finder'
alias sourz='source $HOME/.config/zsh/.zshrc'
alias st='speedtest'
alias to=touch_open
touch_open() {
	if ! [ "$1" ]; then
		echo "need a file!" >&2
		return 1
	fi
	: > "$1" && nvim "$1"
}
alias tp='trash-put'
alias weather="curl 'v2d.wttr.in/Bradenton?u'"
alias y='yazi'
alias yt='yt-dlp'
alias ytm='yt-dlp --extract-audio --audio-format mp3 --audio-quality 0'

# SSH
alias pi_hole='ssh pihole'
alias pi_strava='ssh caleb@192.168.1.192'
alias pi_famserver='ssh caleb@192.168.1.'
alias arch='ssh caleb@192.168.1.179'

# Configs
alias dots='cd $HOME/Projects/mac-dotfiles'
alias confalias='cd $HOME/.config/zsh/ && nvim aliases.zsh'
alias confghostty='cd $HOME/.config/ghostty/ && nvim .'
alias confkitty='cd $HOME/.config/kitty/ && nvim .'
alias conftmux='cd $HOME/.config/tmux/ && nvim .'
alias confnv='cd $HOME/.config/nvim/ && nvim .'
alias confzsh='cd $HOME/.config/zsh/ && nvim .zshrc'
