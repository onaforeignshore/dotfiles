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
    zplug 'b4b4r07/zsh-vimode-visual', defer:3

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

# ZSH Navigation Tool
if [[ $OS == "OSX" ]]; then
    source /usr/local/share/zsh-navigation-tools/zsh-navigation-tools.plugin.zsh
fi

znt_functions_keywords=( "zplg" "zgen" "match" )
zle -N znt-cd-widget
bindkey "^B" znt-cd-widget
zle -N znt-kill-widget
bindkey "^Y" znt-kill-widget
