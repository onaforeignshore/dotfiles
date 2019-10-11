#!/usr/bin/env zsh
echo 'Have you rebooted into safe mode? (⌘R)'
echo 'Did you disable SIP? (csrutil disable)'

echo 'Backing up default list...'
cp /System/Library/Frameworks/ApplicationServices.framework/Frameworks/CoreText.framework/Resources/DefaultFontFallbacks.plist ~/DefaultFontFallbacks.bak.plist
echo 'Installing updated list...'
sudo cp ~/bin/DefaultFontFallbacks.new.plist /System/Library/Frameworks/ApplicationServices.framework/Frameworks/CoreText.framework/Resources/DefaultFontFallbacks.plist

echo 'Done!'
echo 'Remember to reenable SIP! (csrutil enable)'
