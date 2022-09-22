source './themes/catppucin_mocha.sh'

source './gnome/terminal.sh'

source './gnome/desktop.sh'

source './vscode/vscode.sh'

source './firefox/firefox.sh'

# TODO: Move to bashrc
pwd=$(pwd)
gsettings set org.gnome.desktop.background picture-uri file:///$pwd/wallpapers/catppucin/dark-cat-rosewater.png
