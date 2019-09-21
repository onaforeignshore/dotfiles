####################
# Path set up
####################

# adding path directory for custom scripts
PATH=$DOTFILES/bin:$PATH

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
export PATH="$PATH:/usr/local/Homebrew/Library/Homebrew/cask/cmd:/usr/local/Homebrew/Library/Homebrew/shims/scm"

# coreutils override (with gnu version)
export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
export MANPATH=/usr/local/opt/coreutils/libexec/gnuman:$MANPATH

# build tools override
export PATH="/usr/local/opt/bison/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/bison/lib"

export PATH="/usr/local/opt/gettext/bin:$PATH"
export LDFLAGS="$LDFLAGS -L/usr/local/opt/gettext/lib"
export CPPFLAGS="-I/usr/local/opt/gettext/include"

export PATH="/usr/local/opt/libxml2/bin:$PATH"
export LDFLAGS="$LDFLAGS -L/usr/local/opt/libxml2/lib"
export CPPFLAGS="$CPPFLAGS -I/usr/local/opt/libxml2/include"
export PKG_CONFIG_PATH="/usr/local/opt/libxml2/lib/pkgconfig"

export PATH="/usr/local/opt/libxslt/bin:$PATH"
export LDFLAGS="$LDFLAGS -L/usr/local/opt/libxslt/lib"
export CPPFLAGS="$CPPFLAGS -I/usr/local/opt/libxslt/include"
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/usr/local/opt/libxslt/lib/pkgconfig"

export PATH="/usr/local/opt/flex/bin:$PATH"
export LDFLAGS="$LDFLAGS -L/usr/local/opt/flex/lib"
export CPPFLAGS="$CPPFLAGS -I/usr/local/opt/flex/include"

alias gcc='gcc-9'
alias cc='gcc-9'
alias g++='g++-9'
alias c++='c++-9'

# Add brew python to path
export PATH=/usr/local/opt/python/libexec/bin:/usr/local/opt/python@2/libexec/bin:$PATH

# Add ruby to the path
export PATH="$(gem env gemdir)/bin:$PATH" # default path
export PATH="$(ruby -r rubygems -e 'puts Gem.user_dir')/bin:$PATH" # user installed path

# Add composer to the path (https://getcomposer.org/doc/00-intro.md)
export PATH=$PATH:$HOME/.composer/vendor/bin

export PATH=$PATH:/usr/local/bin

# add /usr/local/sbin
if [[ -d /usr/local/sbin ]]; then
    export PATH=/usr/local/sbin:$PATH
fi

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
