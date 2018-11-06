#!/bin/sh

if test ! $(which brew); then
    echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "\n\nInstalling homebrew packages..."
echo "=============================="

formulas=(
    # flags should pass through the `brew list check`
    bash-completion
    brew-cask-completion
    binutils
    coreutils
    findutils

    git

    zsh
    zshdb
    zsh-autosuggestions
    zsh-syntax-highlighting
    bash
    bashdb

    go
    python@2
    python
    ruby

    neovim
    reattach-to-user-namespace
    tmux
    task
    timewarrior

    diff-so-fancy
    node

    imagemagick
    nano

    mas
)

    # adns
    # apr
    # apr-util
    # atk
    # autoconf
    # automake
    # berkeley-db
    # boost
    # cmake
    # composer
    # cscope
    # ctags
    # curl
    # exiftoollibmpc
    # fribidi
    # gawk
    # gcc
    # gdbm
    # gdk-pixbuf
    # glances
    # gnu-sed
    # gnu-tar
    # gnu-which
    # gnupg
    # gnupg2
    # gobject-introspection
    # gpg-agent
    # gpgme
    # grep
    # gtk+
    # gzip
    # harfbuzz
    # hicolor-icon-theme
    # highlight
    # hub
    # isl
    # jack
    # jq
    # lame
    # lastpass-cli
    # libassuan
    # libgcrypt
    # libglade
    # libgpg-error
    # libidn2
    # libksba
    # libsamplerate
    # libssh2
    # libusb
    # libxml2
    # little-cms2
    # lua
    # lz4
    # mercurial
    # mono
    # mpfr
    # neofetch
    # nginx
    # npth
    # oniguruma
    # openssl
    # pango
    # pcre
    # perl
    # pinentry
    # pkg-config
    # portaudio
    # pth
    # py2cairo
    # pygobject
    # pygtk
    # rust
    # screenresolution
    # shfmt
    # subversion
    # tasksh
    # texi2html
    # tree
    # universal-ctags
    # utf8proc
    # webp
    # wget

for formula in "${formulas[@]}"; do
    if brew list "$formula" > /dev/null 2>&1; then
        echo "$formula already installed... skipping."
    else
        brew install $formula
    fi
done

formulas=(
    # flags should pass through the `brew list check`
    adobe-acrobat-reader
    alfred
    android-file-transfer
    audio-hijack
    bartender
    calibre
    cleanmymac
    cloudmounter
    contexts
    dash
    dropbox
    duet
    dupeguru
    eloquent
    evernote
    fontexplorer-x-pro
    google-backup-and-sync
    google-chrome
    google-drive-file-stream
    hazel
    imageoptim
    istat-menus
    iterm2
    java
    kext-utility
    launchrocket
    limechat
    linein
    macdropany
    magicprefs
    malwarebytes-anti-malware
    microsoft-office
    musescore
    nvalt
    onyx
    parallels-desktop
    path-finder
    polyphone
    popclip
    qbittorrent
    qlcolorcode
    qlimagesize
    qlmarkdown
    qlplayground
    qlprettypatch
    qlrest
    qlstephen
    qlswift
    qlvideo
    quicklook-csv
    quicklook-json
    quicklook-pat
    quicklookapk
    retinizer
    scrivener
    silverlight
    skype
    soundflower
    sublime-text
    suspicious-package
    taskwarrior-pomodoro
    teamviewer
    telegram
    textmate
    textual
    the-unarchiver
    totalfinder
    totalspaces
    totalterminal
    transmit
    ubersicht
    vlc
    webpquicklook
    whatsapp
    whatsize
    xquartz
)
    # cdock
    # cheatsheet
    # chitchat
    # commander-one
    # controllermate
    # docker
    # easysimbl
    # eve
    # flux
    # freecad
    # gfxcardstatus
    # hyperdock
    # inkscape
    # librecad
    # qcad
    # smcfancontrol
    # todour
    # tunnelblick
    # ubar
    # vectr
    # watts

for formula in "${formulas[@]}"; do
    if brew cask list "$formula" > /dev/null 2>&1; then
        echo "$formula already installed... skipping."
    else
        brew cask install $formula
    fi
done
