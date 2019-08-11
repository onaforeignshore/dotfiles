#!/usr/bin/env zsh
echo 'Have you rebooted into safe mode? (⌘R)'

cp /System/Library/Frameworks/ApplicationServices.framework/Frameworks/CoreText.framework/Resources/DefaultFontFallbacks.plist ~/DefaultFontFallbacks.plist.bak
sudo cp ~/DefaultFontFallbacks.new.plist /System/Library/Frameworks/ApplicationServices.framework/Frameworks/CoreText.framework/Resources/DefaultFontFallbacks.plist
