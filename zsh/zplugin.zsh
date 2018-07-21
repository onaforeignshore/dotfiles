#!/bin/sh

# https://github.com/zdharma/zplugin

ZPLG_HOME="${ZDOTDIR:-$HOME}/.zplugin"

# check that zplugin is installed

# only source zplugin on initial load
if [[ -f ${ZPLG_HOME}/bin/zplugin.zsh ]] ; then
  source ${ZPLG_HOME}/bin/zplugin.zsh
  autoload -Uz _zplugin
  (( ${+_comps} )) && _comps[zplugin]=_zplugin
else
  echo "Installing zplugin..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"
fi

# Multi-word, syntax highlighted history searching for Zsh
zplugin load zdharma/history-search-multi-word

bindkey '^r' history-search-multi-word

#zstyle ":history-search-multi-word" page-size "8"                      # Number of entries to show (default is $LINES/3)
zstyle ":history-search-multi-word" highlight-color "fg=yellow,bold"   # Color in which to highlight matched, searched text (default bg=17 on 256-color terminals)
zstyle ":plugin:history-search-multi-word" synhl "yes"                 # Whether to perform syntax highlighting (default true)
zstyle ":plugin:history-search-multi-word" active "standout"          # Effect on active history entry. Try: standout, bold, bg=blue (default underline)
zstyle ":plugin:history-search-multi-word" check-paths "yes"           # Whether to check paths for existence and mark with magenta (default true)
zstyle ":plugin:history-search-multi-word" clear-on-cancel "no"        # Whether pressing Ctrl-C or ESC should clear entered query

typeset -gA HSMW_HIGHLIGHT_STYLES
HSMW_HIGHLIGHT_STYLES[path]="bg=magenta,fg=white,bold"
HSMW_HIGHLIGHT_STYLES[single-hyphen-option]="fg=cyan"
HSMW_HIGHLIGHT_STYLES[double-hyphen-option]="fg=cyan"

# Optimized and extended zsh-syntax-highlighting
zplugin load zdharma/fast-syntax-highlighting

# Zsh User Interface library – CGI+DHTML-like rapid application development with Zsh - http://zdharma.org
zplugin ice compile"*.lzui"
zplugin load zdharma/zui

# Semigraphical .zshrc editor for Zplugin commands
zplugin ice wait'[[ -n ${ZLAST_COMMANDS[(r)cras*]} ]]'
zplugin load zdharma/zplugin-crasis

# zsh-vimode-visual provides visual mode in Zsh Line Editer
zplugin load 'b4b4r07/zsh-vimode-visual'

# Binary release in archive, from Github-releases page; after automatic unpacking it provides command "fzf"
zplugin ice from"gh-r" as"program"; zplugin load junegunn/fzf-bin

#export FZF_DEFAULT_COMMAND='ag -g ""'
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
# --files: List files that would be searched but do not search
# --no-ignore: Do not respect .gitignore, etc...
# --hidden: Search hidden files and folders
# --follow: Follow symlinks
# --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)

# Scripts that are built at install (there's single default make target, "install", and
# it constructs scripts by cat-ting a few files). The make ice could also be:
# `make"install PREFIX=$ZPFX"`, if "install" wouldn't be default target
zplugin ice as"program" pick"$ZPFX/bin/git-*" make"PREFIX=$ZPFX"
zplugin light tj/git-extras
source ${ZPLG_HOME}/plugins/tj---git-extras/etc/git-extras-completion.zsh

# more completions
zplugin load 'zsh-users/zsh-completions'

# Fish-like autosuggestions for zsh
zplugin ice wait'1' atload'_zsh_autosuggest_start'
zplugin light zsh-users/zsh-autosuggestions

# Fish shell like syntax highlighting for Zsh.
# zplugin light zsh-users/zsh-syntax-highlighting

# Zsh plugin for installing, updating and loading nvm
export NVM_LAZY_LOAD=true
zplugin ice wait'[[ -n ${ZLAST_COMMANDS[(r)nvm*]} ]]'
zplugin load lukechilds/zsh-nvm

# Autocompletion support for npm run
zplugin ice wait'[[ -n ${ZLAST_COMMANDS[(r)npm*]} ]]'
zplugin load akoenig/npm-run.plugin.zsh

# block the traditional method of adding completions
zplugin ice blockf

# zsh completion script for grunt/ grunt-cli
zplugin load yonchu/grunt-zsh-completion

# This one to be ran just once, in interactive session
#zplugin creinstall %HOME/my_completions  # Handle completions without loading any plugin, see "clist" command
