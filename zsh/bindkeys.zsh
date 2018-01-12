# Enable VI support for cursors
bindkey -v

# allow v to edit the command line (standard behaviour)
autoload -Uz edit-command-line
bindkey -M vicmd 'v' edit-command-line

# allow ctrl-p, ctrl-n for navigate history (standard behaviour)
bindkey '^P' up-history
bindkey '^N' down-history

# allow ctrl-h, ctrl-w, ctrl-? for char and word deletion (standard behaviour)
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word

# allow ctrl-k to delete the whole line
bindkey '^k' kill-whole-line

# allow ctrl-r to perform backward search in history
bindkey '^r' history-incremental-search-backward

bindkey '^z' zaw-history

# allow ctrl-a and ctrl-e to move to beginning/end of line
bindkey '^a' beginning-of-line
bindkey '^e' end-of-line

# make terminal command navigation sane again
bindkey '^[^[[D' backward-word
bindkey '^[^[[C' forward-word
bindkey '^[[5D' beginning-of-line
bindkey '^[[5C' end-of-line
bindkey '^[[3~' delete-char
bindkey '^?' backward-delete-char

if [[ -a /usr/local/Cellar/zsh-history-substring-search/1.0.1/zsh-history-substring-search.zsh ]]; then
    source /usr/local/Cellar/zsh-history-substring-search/1.0.1/zsh-history-substring-search.zsh
    bindkey "^[[A" history-substring-search-up
    bindkey "^[[B" history-substring-search-down
fi

