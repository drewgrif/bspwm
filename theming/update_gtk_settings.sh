#!/bin/bash

# Ensure the directories exist
mkdir -p ~/.config/gtk-3.0

# Check if the settings.ini already exists and prompt for overwrite
if [ -f ~/.config/gtk-3.0/settings.ini ]; then
    echo "settings.ini already exists, overwriting..."
fi

# Write to ~/.config/gtk-3.0/settings.ini
cat << EOF > ~/.config/gtk-3.0/settings.ini
[Settings]
gtk-theme-name=Colloid-Teal-Dark
gtk-icon-theme-name=Colloid-Teal-Everforest-Dark
gtk-font-name=Sans 10
gtk-cursor-theme-name=Adwaita
gtk-cursor-theme-size=0
gtk-toolbar-style=GTK_TOOLBAR_BOTH
gtk-toolbar-icon-size=GTK_ICON_SIZE_LARGE_TOOLBAR
gtk-button-images=1
gtk-menu-images=1
gtk-enable-event-sounds=1
gtk-enable-input-feedback-sounds=1
gtk-xft-antialias=1
gtk-xft-hinting=1
gtk-xft-hintstyle=hintfull
EOF

# Check if the .gtkrc-2.0 already exists and prompt for overwrite
if [ -f ~/.gtkrc-2.0 ]; then
    echo ".gtkrc-2.0 already exists, overwriting..."
fi

# Write to ~/.gtkrc-2.0
cat << EOF > ~/.gtkrc-2.0
gtk-theme-name="Colloid-Teal-Dark"
gtk-icon-theme-name="Colloid-Teal-Everforest-Dark"
gtk-font-name="Sans 10"
gtk-cursor-theme-name="Adwaita"
gtk-cursor-theme-size=0
gtk-toolbar-style=GTK_TOOLBAR_BOTH
gtk-toolbar-icon-size=GTK_ICON_SIZE_LARGE_TOOLBAR
gtk-button-images=1
gtk-menu-images=1
gtk-enable-event-sounds=1
gtk-enable-input-feedback-sounds=1
gtk-xft-antialias=1
gtk-xft-hinting=1
gtk-xft-hintstyle="hintfull"
EOF

echo "GTK settings updated."
