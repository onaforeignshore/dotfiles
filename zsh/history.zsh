# history
HISTFILE=$ZDOTDIR/.zsh_history
HISTORY=10000
SAVEHIST=10000
setopt append_history # Allow multiple terminal sessions to all append to one zsh command history
setopt extended_history # Include more information about when the command was executed, etc
setopt hist_expire_dups_first
setopt hist_find_no_dups # When searching history don't display results already cycled through twice
setopt hist_ignore_all_dups
setopt hist_ignore_dups # Do not write events to history that are duplicates of previous events
setopt hist_reduce_blanks # Remove extra blanks from each command line being added to history
setopt hist_verify
setopt inc_append_history # Add comamnds as they are typed, don't wait until shell exit
setopt share_history
unsetopt hist_beep
unsetopt hup
