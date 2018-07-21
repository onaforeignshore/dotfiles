# reload zsh config
alias reload!='RELOAD=1 source ~/.zshrc'

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
    colorflag="--color"
else # OS X `ls`
    colorflag="-G"
fi

alias vim="nvim"

# Filesystem aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias ls="ls ${colorflag}" # include color
alias l="ls -lah ${colorflag}" # -l long -a show symlinks file -h use unit suffixes
alias la="ls -AF ${colorflag}" # -A all entries -F directory/ executable* symlink@ socket= whiteout% FIFO|
alias ll="ls -lFh ${colorflag}"
alias lld="ls -l | grep ^d" #
alias rmf="rm -rf"

alias mkdir="mkdir -pv" # -p make intermediate -v show while creating

# Helpers
alias sudo="sudo " # allow aliases to be sudoed
alias less="less --quiet"
alias grep='GREP_COLOR="1;37;45" grep --color=auto'

# System
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"
alias top="sudo htop"

# Network
alias ping="ping -c 5" # ping 5 times 'by default'
alias wget="wget -c"
alias whois="whois -h whois-servers.net" # Enhanced WHOIS lookups

# ROT13-encode text. Works for decoding, too! ;)
alias rot13='tr a-zA-Z n-za-mN-ZA-M'

# One of @janmoesen’s ProTip™s
for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
    alias "$method"="lwp-request -m '$method'"
done

#
# MAC SPECIFIC ALIASES
#
# Homebrew
alias brewski='brew update && brew upgrade && brew cleanup; brew doctor'

# IP addresses
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
alias myip2="curl http://ipecho.net/plain; echo"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

# View HTTP traffic
alias sniff="sudo ngrep -d 'en0' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en0 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# Trim new lines and copy to clipboard
alias trimcopy="tr -d '\n' | pbcopy"

# File/Dir size
alias fs="stat -f \"%z bytes\""
alias ds="du -s ./* | sort -n| cut -f 2-|xargs -i du -sh {}"
alias df='df -h' # disk free, in Gigabytes, not bytes
alias du='ncdu -h -c' # calculate disk usage for a folder

# Recursively delete `.DS_Store` files
alias cleanup="find . -name '*.DS_Store' -type f -ls -delete"

# Colorize go build output
alias go="colorgo"

# Use colored output for todo.sh
alias todo="todo.sh -c"

# Miscellaneous macOS aliases
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; rm -rfv ~/.Trash" # Empty the Trash on all mounted volumes and the main HDD
alias flush="sudo dscacheutil -flushcache;killall -HUP mDNSResponder;say Flushed" # Flush Directory Service cache
alias fixTerminal="sudo rm -f /private/var/log/asl/*.asl" # Speed up Terminal if it is loading slow by clearing out ASL logs
alias lscleanup="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder" # Clean up LaunchServices to remove duplicates in the “Open With” menu
alias ql="qlmanage -p 2>/dev/null" # Preview a file using QuickLook

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Control volume
alias volmute="osascript -e 'set volume output muted true'"
alias volfull="osascript -e 'set volume 10'"

# Kill all the tabs in Chrome to free up memory
# [C] explained: http://www.commandlinefu.com/commands/view/402/exclude-grep-from-your-grepped-output-of-ps-alias-included-in-description
alias chromekill="ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill"

# Applications
alias ios='open -a /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app'
alias chrome="/Applications/Google\\ Chrome.app/Contents/MacOS/Google\\ Chrome"
#alias canary="/Applications/Google\\ Chrome\\ Canary.app/Contents/MacOS/Google\\ Chrome\\ Canary"
alias top='glances'
