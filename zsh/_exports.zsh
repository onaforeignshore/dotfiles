####################
# Path set up
####################

export PATH=/usr/local/bin:$PATH

# add /usr/local/sbin
if [[ -d /usr/local/sbin ]]; then
    export PATH=/usr/local/sbin:$PATH
fi

# adding path directory for custom scripts
export PATH=$DOTFILES/bin:$PATH

# check for custom bin directory and add to path
if [[ -d ~/bin ]]; then
    export PATH=~/bin:$PATH
fi

# add Go Root path
export GOROOT=/usr/local/opt/go/libexec
if [[ -d ~/code ]]; then
    export GOPATH=$HOME/code/go
else
    export GOPATH=$HOME/go
fi
export PATH=$PATH:$GOROOT:$GOPATH/bin

# Add RVM to PATH for scripting
if [[ -d ~/.rvm ]]; then
    PATH=$HOME/.rvm/bin:$PATH
    source ~/.rvm/scripts/rvm
fi

# homebrew configuration
export PATH=$PATH:/usr/local/Homebrew/Library/Homebrew/cask/cmd:/usr/local/Homebrew/Library/Homebrew/shims/scm

# coreutils override (with gnu version)
export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
export MANPATH=/usr/local/opt/coreutils/libexec/gnuman:$MANPATH

# Add brew python to path
export PATH=/usr/local/opt/python/libexec/bin:/usr/local/opt/python@2/libexec/bin:$PATH

# Add composer to the path (https://getcomposer.org/doc/00-intro.md)
export PATH=$PATH:$HOME/.composer/vendor/bin

export XDG_CACHE_HOME="$HOME/.config"

####################
# general exports
####################

export LC_COLLATE=C # CTAGS Sorting in VIM/Emacs is better behaved with this in place
export LESS="--ignore-case --raw-control-chars"
export LESS_TERMCAP_md="$PR_CYAN" # Highlight section titles in manual pages
export MANPAGER="less -X" # Don’t clear the screen after quitting a manual page
export PAGER="most"
export PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")' # for powerline
export PYTHON=python2 # Make sure we use Python 2
export REPORTTIME=10 # display how long all tasks over 10 seconds take

export GTK_THEME=Adwaita:dark # set dark theme for Meld merge
