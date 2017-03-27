#!/bin/sh

# only source zplug on initial load
if [ -z ${RELOAD} ]; then
    if ! [ type "zplug" > /dev/null 2>&1 ]; then
        source ~/.zplug/init.zsh
    fi

    zplug 'zplug/zplug', hook-build:'zplug --self-manage'
    zplug 'zsh-users/zsh-syntax-highlighting', defer:2
    zplug 'zsh-users/zsh-autosuggestions'
    zplug 'akoenig/npm-run.plugin.zsh'
    zplug 'yonchu/grunt-zsh-completion'

    export NVM_LAZY_LOAD=true
    zplug "lukechilds/zsh-nvm"

    # Install plugins if there are plugins that have not been installed
    if ! zplug check; then
        printf "Install? [y/N]: "
        if read -q; then
            echo; zplug install
        fi
    fi

    zplug load
fi


if [[ -a /usr/local/Cellar/zsh-history-substring-search/1.0.1/zsh-history-substring-search.zsh ]]; then
    source /usr/local/Cellar/zsh-history-substring-search/1.0.1/zsh-history-substring-search.zsh
    bindkey "^[[A" history-substring-search-up
    bindkey "^[[B" history-substring-search-down
fi

# ZSH Navigation Tool
if [[ $OS == "OSX" ]]; then
    source /usr/local/share/zsh-navigation-tools/zsh-navigation-tools.plugin.zsh
fi

znt_functions_keywords=( "zplg" "zgen" "match" )
zle -N znt-cd-widget
bindkey "^B" znt-cd-widget
zle -N znt-kill-widget
bindkey "^Y" znt-kill-widget
