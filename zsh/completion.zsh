# initialize autocomplete
autoload -Uz compinit add-zsh-hook
zmodload zsh/complist

# needed to get things like current git branch
autoload -Uz vcs_info

setopt complete_in_word # Allow completion from within a word/phrase
setopt always_to_end # When completing from the middle of a word, move the cursor to the end of the word

# Enable completion caching, use rehash to clear
zstyle ':completion::complete:*' use-cache on
zstyle ':completion::complete:*' cache-path $ZDOTDIR/cache/$HOST

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

# default to file completion
zstyle ':completion:*' completer _expand _complete _files _correct _approximate

zstyle ':completion:*' list-colors '' # Fallback to built in ls colors
zstyle ':completion:*' list-prompt '%SAt %p: Hit TAB for more, or the character to insert%s' # Make the list prompt friendly
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' # match uppercase from lowercase
zstyle ':completion:*' max-errors 3 numeric
zstyle ':completion:*' menu select=1 _complete _ignored _approximate
zstyle ':completion:*' menu select=2
zstyle ':completion:*' rehash yes
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s' # Make the selection prompt friendly when there are a lot of choices
zstyle ':completion:*' use-compctl false
zstyle ':completion:*:*:-subscript-:*' tag-order indexes parameters # offer indexes before parameters in subscripts
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01' # Add simple colors to kill
zstyle ':completion:*::::' completer _expand _complete _ignored _approximate # list of completers to use
zstyle ':completion:*:cp:*' ignore-line yes
zstyle ':completion:*:default' list-prompt '%S%M matches%s'
# zstyle ':completion:*:expand:*' tag-order all-expansions # insert all expansions for expand completer
zstyle ':completion:*:killall:*' command 'ps -u $USER -o cmd'
zstyle ':completion:*:manuals' separate-sections true
zstyle ':completion:*:manuals.(^1*)' insert-sections true
zstyle ':completion:*:mv:*' ignore-line yes
zstyle ':completion:*:rm:*' ignore-line yes
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin
zstyle -e ':completion:*:approximate:*' max-errors 'reply=( $(( ($#PREFIX + $#SUFFIX) / 3 )) )'

# formatting and messages
zstyle ':completion:*' group-name ''
zstyle ':completion:*' verbose yes
zstyle ':completion:*:corrections' format '%B%d (errors: %e)%b'
zstyle ':completion:*:descriptions' format '%B%d%b'
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:warnings' format 'No matches for: %d'

# ignore completion functions (until the _ignored completer)
zstyle ':completion:*:functions' ignored-patterns '_*'
zstyle ':completion:*:scp:*' group-order files all-files users hosts-domain hosts-host hosts-ipaddr
zstyle ':completion:*:scp:*' tag-order files users 'hosts:-host hosts:-domain:domain hosts:-ipaddr"IP\ Address *'
zstyle ':completion:*:ssh:*' group-order hosts-domain hosts-host users hosts-ipaddr
zstyle ':completion:*:ssh:*' tag-order users 'hosts:-host hosts:-domain:domain hosts:-ipaddr"IP\ Address *'
zstyle '*' single-ignored show

# ZAW styles
zstyle ':filter-select' case-insensitive yes # enable case-insensitive search
zstyle ':filter-select' extended-search no
zstyle ':filter-select' max-lines -10 # use $LINES - 10 for filter-select
zstyle ':filter-select' max-lines 10 # use 10 lines for filter-select
zstyle ':filter-select' rotate-list yes # enable rotation for filter-select
zstyle ':filter-select:highlight' matched fg=yellow,standout

# man zshcontrib
# zstyle ':vcs_info:*' actionformats '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
# zstyle ':vcs_info:*' formats '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{5}]%f '
# zstyle ':vcs_info:*' enable git #cvs hg svn
# zstyle ':vcs_info:*' enable git # You can add hg too if needed: `git hg`
# zstyle ':vcs_info:git*' actionformats ' %b|%a' 'x%R'
# zstyle ':vcs_info:git*' formats ' %b' 'x%R'
# zstyle ':vcs_info:git*' max-exports 2
# zstyle ':vcs_info:git*' use-simple true
