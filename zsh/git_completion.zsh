# this is specific to the location of the current version of git, installed by homebrew
completion=/usr/local/share/zsh/site-functions/_git

if test -f $completion; then
    source $completion
fi