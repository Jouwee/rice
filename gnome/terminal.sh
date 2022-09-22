#!/bin/sh

PROFILE_UUID="$(gsettings get "org.gnome.Terminal.ProfilesList" default | tr -d \')"
DCONF_BASE=/org/gnome/terminal/legacy/profiles:
DCONF_BASEG=/org/gnome/terminal/legacy

# Disable theme
dconf write "$DCONF_BASE/:$PROFILE_UUID/use-theme-colors" "false"
dconf write "$DCONF_BASE/:$PROFILE_UUID/use-theme-background" "false"
# Disable scrollbar
dconf write "$DCONF_BASE/:$PROFILE_UUID/scrollbar-policy" "'never'"
# Disable menubar
dconf write "$DCONF_BASEG/default-show-menubar" "false"
dconf write "$DCONF_BASEG/menu-accelerator-enabled" "false"
# Font
dconf write "$DCONF_BASE/:$PROFILE_UUID/font" "'Fira Code 11'"
dconf write "$DCONF_BASE/:$PROFILE_UUID/use-system-font" "false"
# Transparency
dconf write "$DCONF_BASE/:$PROFILE_UUID/use-theme-transparency" "false"
dconf write "$DCONF_BASE/:$PROFILE_UUID/background-transparency-percent" "0"
# Palette
dconf write "$DCONF_BASE/:$PROFILE_UUID/palette" "[$rice_terminal_pallette]"
# Backgrounds
dconf write "$DCONF_BASE/:$PROFILE_UUID/background-color" "'$rice_bg'"
dconf write "$DCONF_BASE/:$PROFILE_UUID/foreground-color" "'$rice_text'"
dconf write "$DCONF_BASE/:$PROFILE_UUID/use-transparent-background" "true"
# .
dconf write "$DCONF_BASE/:$PROFILE_UUID/bold-color" "'$rice_text'"
dconf write "$DCONF_BASE/:$PROFILE_UUID/bold-color-same-as-fg" "true"
# .
dconf write "$DCONF_BASE/:$PROFILE_UUID/use-theme-colors" "false"
dconf write "$DCONF_BASE/:$PROFILE_UUID/use-theme-background" "false"
dconf write "$DCONF_BASE/:$PROFILE_UUID/use-theme-transparency" "false"
# .
dconf write "$DCONF_BASE/:$PROFILE_UUID/cursor-colors-set" "true"
dconf write "$DCONF_BASE/:$PROFILE_UUID/cursor-foreground-color" "'$nord1_rgb'"
dconf write "$DCONF_BASE/:$PROFILE_UUID/cursor-background-color" "'$nord4_rgb'"
# .
dconf write "$DCONF_BASE/:$PROFILE_UUID/highlight-colors-set" "true"
dconf write "$DCONF_BASE/:$PROFILE_UUID/highlight-foreground-color" "'$nord0_rgb'"
dconf write "$DCONF_BASE/:$PROFILE_UUID/highlight-background-color" "'$nord8_rgb'"
