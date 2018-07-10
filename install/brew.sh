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
    git
    highlight
    hub
    markdown
    neovim
    nginx
    reattach-to-user-namespace
    rg
    rust
    tmux
    tree
    wget
    #z
    zsh
    #zsh-history-substring-search
    #zsh-navigation-tools
    zshdb
)

for formula in "${formulas[@]}"; do
    if brew list "$formula" > /dev/null 2>&1; then
        echo "$formula already installed... skipping."
    else
        brew install $formula
    fi
done
