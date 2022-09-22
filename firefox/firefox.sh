#!/bin/sh

if [[ $rice_theme == "catppucin_mocha" ]]; then
    theme_url=https://github.com/catppuccin/firefox/releases/download/old/catppuccin_mocha_blue.xpi
fi

LOCAL=/var/tmp/firefox_theme.xpi
wget $theme_url -O $LOCAL
firefox $LOCAL
