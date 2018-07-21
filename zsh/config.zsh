CASE_SENSITIVE="true" # Set to this to use case-sensitive completion
DISABLE_AUTO_UPDATE="true" # Comment this out to disable weekly auto-update checks
# DISABLE_LS_COLORS="true" # Uncomment following line if you want to disable colors in ls
# DISABLE_AUTO_TITLE="true" # Uncomment following line if you want to disable autosetting terminal title.
COMPLETION_WAITING_DOTS="true" # Uncomment following line if you want red dots to be displayed while waiting for completion

setopt auto_cd # If you type foo, and it isn't a command, and it is a directory in your cdpath, go there
setopt auto_pushd
setopt auto_remove_slash
setopt chase_links
setopt correct
setopt interactive_comments # Allow comments even in interactive shells (especially for Muness)
setopt local_options
unsetopt local_traps
setopt nullglob
setopt prompt_subst
setopt pushd_ignore_dups
setopt pushd_silent
setopt pushd_to_home
setopt rm_star_wait
unsetopt beep
unsetopt bg_nice
unsetopt clobber
unsetopt correct_all
unsetopt glob_dots
unsetopt ignore_eof
unsetopt list_ambiguous
unsetopt list_beep
unsetopt rm_star_silent

#setopt complete_aliases

fpath=($ZSH/functions $fpath)
autoload -U $ZSH/functions/*(:t)
