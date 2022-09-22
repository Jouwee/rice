#!/bin/sh

if [[ $rice_theme == "catppucin_mocha" ]]; then
    theme_url="https://ocs-dl.fra1.cdn.digitaloceanspaces.com/data/files/1645385618/Catppuccin-Mocha-B-Gnome-Shell.zip?response-content-disposition=attachment%3B%2520Catppuccin-Mocha-B-Gnome-Shell.zip&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=RWJAQUNCHT7V2NCLZ2AL%2F20220921%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220921T131644Z&X-Amz-SignedHeaders=host&X-Amz-Expires=60&X-Amz-Signature=048986c4d3c37c3245b0210951b3729c3759966349e36564bf5b517ef64de5c1"
fi


# Nordic theme
mkdir ~/.themes
wget $theme_url -O ~/.themes/theme.zip
cd ~/.themes/
tar -xJf ./theme.tar.xz

gsettings set org.gnome.desktop.interface gtk-theme Nordic-darker
gsettings set org.gnome.desktop.wm.preferences theme Nordic-darker
