#!/usr/bin/env bash

command_exists() {
    type "$1" > /dev/null 2>&1
}

echo "Installing dotfiles."

echo "Initializing submodule(s)"
git submodule update --init --recursive

source install/link.sh

# only perform macOS-specific install
if [ "$(uname)" == "Darwin" ]; then
    echo -e "\n\nRunning on OSX"

    source install/brew.sh

    source install/osx.sh

    # create a backup of the original nginx.conf
    if [ -f /usr/local/etc/nginx/nginx.conf ]; then
        mv /usr/local/etc/nginx/nginx.conf /usr/local/etc/nginx/nginx.conf.original
    fi

    ln -s ~/.dotfiles/nginx/nginx.conf /usr/local/etc/nginx/nginx.conf
    # symlink the code.dev from dotfiles
    ln -s ~/.dotfiles/nginx/code.dev /usr/local/etc/nginx/sites-enabled/code.dev
fi

# only perform Linux-specific install
if [ "$(uname)" == "Linux" ]; then
    echo -e "\n\nRunning on Linux"

    # keyboard key swap for Linux on Mac - ` and §
    ln -s ~/.dotfiles/linux/.Xmodmap ~/.Xmodmap
fi

echo "updating terminal information for TMUX"
source install/fix-terminfo.sh

echo "creating vim directories"
mkdir -p ~/.vim-tmp

if ! command_exists zsh; then
    echo "zsh not found. Please install and then re-run installation scripts"
    exit 1
elif ! [[ $SHELL =~ .*zsh.* ]]; then
    echo "Configuring zsh as default shell"
    chsh -s $(which zsh)
fi

# if ! command_exists zplug; then
#     echo "installing zplug, a plugin manager for zsh - http://zplug.sh"
#     git clone https://github.com/zplug/zplug ~/.zplug
# fi

if ! command_exists zplugin; then
    echo "installing zplugin, Elastic Zsh plugin manager with clean fpath, reports, completion management, turbo mode, services - https://github.com/zdharma/zplugin"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"
fi

echo "Done. Reload your terminal."
