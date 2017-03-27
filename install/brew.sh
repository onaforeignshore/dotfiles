#!/bin/sh

if test ! $(which brew); then
    echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo -e "\n\nInstalling homebrew packages..."
echo "=============================="

formulas=(
    # flags should pass through the `brew list check`
    ack
    diff-so-fancy
    dnsmasq
    fzf
    git
    highlight
    hub
    markdown
    neovim/neovim/neovim
    nginx
    reattach-to-user-namespace
    tmux
    tree
    wget
    z
    zsh
)

for formula in "${formulas[@]}"; do
    if brew list "$formula" > /dev/null 2>&1; then
        echo "$formula already installed... skipping."
    else
        brew install $formula
    fi
done
