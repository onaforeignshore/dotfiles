CASE_SENSITIVE="true" # Set to this to use case-sensitive completion
DISABLE_AUTO_UPDATE="true" # Comment this out to disable weekly auto-update checks
# DISABLE_LS_COLORS="true" # Uncomment following line if you want to disable colors in ls
# DISABLE_AUTO_TITLE="true" # Uncomment following line if you want to disable autosetting terminal title.
# COMPLETION_WAITING_DOTS="true" # Uncomment following line if you want red dots to be displayed while waiting for completion

setopt auto_cd
setopt auto_pushd
setopt auto_remove_slash
setopt chase_links
setopt correct
setopt interactivecomments
setopt local_options
setopt local_traps
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
unsetopt hist_beep
unsetopt ignore_eof
unsetopt list_ambiguous
unsetopt list_beep
unsetopt rm_star_silent

# history
HISTFILE=$ZDOTDIR/.zsh_history
HISTORY=10000
SAVEHIST=10000
setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_find_no_dups
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_reduce_blanks
setopt hist_verify
setopt inc_append_history
setopt share_history
unsetopt hup

setopt complete_aliases

# make terminal command navigation sane again
bindkey '^[^[[D' backward-word
bindkey '^[^[[C' forward-word
bindkey '^[[5D' beginning-of-line
bindkey '^[[5C' end-of-line
bindkey '^[[3~' delete-char
bindkey '^?' backward-delete-char

fpath=($ZSH/functions $fpath)
autoload -U $ZSH/functions/*(:t)
