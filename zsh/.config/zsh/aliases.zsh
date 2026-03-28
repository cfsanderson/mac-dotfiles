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
alias brave='open -a "Brave Browser" https://www.'
alias brew='env PATH="${PATH//.asdf/shims:/}" brew'
alias code='codium'
alias c='clear'
alias dropbox='cd /Users/caleb/Library/CloudStorage/Dropbox/'
alias gs='git switch'
alias h2='npx shopify hydrogen'
alias home='cd $HOME && clear && fastfetch'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder'
alias hidepaths='defaults write com.apple.finder _FXShowPosixPathInTitle -bool false; killall Finder'
alias icloud='cd ~/iCloud/com~apple~CloudDocs'
alias karabiner='"/Library/Application Support/org.pqrs/Karabiner-Elements/bin/karabiner_cli"'
alias kterm='"/Library/Application Support/org.pqrs/Karabiner-Elements/bin/karabiner_cli" --select-profile 'Terminal''
alias knorm='"/Library/Application Support/org.pqrs/Karabiner-Elements/bin/karabiner_cli" --select-profile 'Normal''
alias l='ls -lA'
alias myhub='open https://github.com/cfsanderson'
alias mkcdir=mkdir_cd
mkdir_cd() {
    mkdir -p -- "$1" &&
    cd -P -- "$1" &&
    ls -la
}
alias music='rmpc; rmpc stop'
alias news='newsboat'
alias notes='cd $HOME/Projects/.notes && gl && code .'
fastfetch() {
    local gallery=(~/.config/fastfetch/star-wars-ascii/*.txt)
    local logo=${gallery[$RANDOM % ${#gallery[@]}]}
    command fastfetch --file "$logo" "$@"
}
alias nv='nvim'
alias pihole='ssh pihole'
alias arch='ssh caleb@192.168.1.179'
alias sb='cd $HOME/Projects/second-brain/ && gl && nv .'
alias sbo='cd $HOME/Projects/second-brain/ && gl && open -a Obsidian'
alias showfiles='defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder'
alias showpaths='defaults write com.apple.finder _FXShowPosixPathInTitle -bool true; killall Finder'
alias sourz='source $HOME/.config/zsh/.zshrc'
alias st='speedtest'
alias stravapi='ssh caleb@192.168.1.192'
alias to=touch_open
touch_open() {
	if ! [ "$1" ]; then
		echo "need a file!" >&2
		return 1
	fi
	: > "$1" && nvim "$1"
}
alias tp='trash-put'
alias v='nvim'
alias weather="curl 'v2d.wttr.in/Bradenton?u'"
alias wikiread='open -a Firefox\ Developer\ Edition $HOME/Library/CloudStorage/Dropbox/.wiki/mdwiki.html'
alias wiki='cd $HOME/Projects/.wiki && v index.md'
alias ws='windsurf'
alias y='yazi'
alias yt='yt-dlp'
alias ytm='yt-dlp --extract-audio --audio-format mp3 --audio-quality 0'

# Taskwarrior
alias twork='task project:Work'
alias thome='task project:Home'
alias tinbox='task project:Inbox'
alias tsave='cd $HOME/Projects/.task/ && gst'

# Configs
alias dots='cd ~/Projects/mac-dotfiles'
alias confalias='cd $HOME/.config/zsh/ && nvim aliases.zsh'
alias confghostty='cd $HOME/.config/ghostty/ && nvim .'
alias confkitty='cd $HOME/.config/kitty/ && nvim .'
alias conftask='cd $HOME/.config/task/ && nvim taskrc'
alias conftmux='cd $HOME/.config/tmux/ && nvim .'
alias confnv='cd $HOME/.config/nvim/ && nvim .'
alias confzsh='cd $HOME/.config/zsh/ && nvim .zshrc'
