
# Downloads or installs the theme
if [[ $rice_theme == "catppucin_mocha" ]]; then
    if [ ! -d $HOME/.vscode/extensions/catppuccin-vsc ]; then
        git clone https://github.com/catppuccin/vscode.git $HOME/.vscode/extensions/catppuccin-vsc > /dev/null
    fi
    rice_theme_flavour="Catppuccin Mocha"
fi

# Replaces the theme and set other settings
VSCODE_SETTINGS=~/.config/Code/User/settings.json
cat $VSCODE_SETTINGS | \
    jq '."workbench.colorTheme" = "'"$rice_theme_flavour"'"' | \
    jq '."editor.fontFamily" = "Fira Code, monospace"' | \
    jq '."editor.fontLigatures" = true' \
    > $VSCODE_SETTINGS.tmp

mv $VSCODE_SETTINGS.tmp $VSCODE_SETTINGS