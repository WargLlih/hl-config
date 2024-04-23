#!/bin/bash

# hyprland: This is the Hyprland compositor
# kitty: This is the default terminal
# waybar: Waybar now has hyprland support
# swaybg: This is used to set a desktop background image
# swaylock-effects: This allows for the locking of the desktop its a fork that adds some editional visual effects
# wofi: This is an application launcher menu
# wlogout: This is a logout menu that allows for shutdown, reboot and sleep
# mako: This is a graphical notification daemon
# thunar: This is a graphical file manager
# ttf-jetbrains-mono-nerd: Som nerd fonts for icons and overall look
# noto-fonts-emoji: fonts needed by the weather script in the top bar
# polkit-gnome: needed to get superuser access on some graphical appliaction
# python-requests: needed for the weather module script to execute
# starship: allows to customize the shell prompt
# swappy: This is a screenshot editor tool
# grim: This is a screenshot tool it grabs images from a Wayland compositor
# slurp: This helps with screenshots, it selects a region in a Wayland compositor
# pamixer: This helps with audio settings such as volume
# brightnessctl: used to control monitor bright level
# gvfs: adds missing functionality to thunar such as automount usb drives
# bluez: the bluetooth service
# bluez-utils: command line utilities to interact with bluettoth devices
# lxappearance: used to set GTK theme
# xfce4-settings: set of tools for xfce, needed to set GTK theme
# dracula-gtk-theme: the Dracula theme, it fits the overall look and feel
# dracula-icons-git" set of icons to go with the Dracula theme
# xdg-desktop-portal-hyprland: xdg-desktop-portal backend for hyprland

sudo pacman -S git \
               neovim \
               wl-clipboard \
               alsa-utils \
               zsh \
               polkit-gnome
               &&

yay -S dracula-gtk-theme \
       dracula-icons-git \
       lxappearance \
       xfce4-settings \
       wlogout \
       mako \
       thunar \
       starship \
       swappy \
       grim \
       slurp \
       pamixer \
       brightnessctl \
       wayland \
       ttf-jetbrains-mono-nerd \
       noto-fonts-emoji \
       bluez \
       bluez-utils \
       python-requests \
       xdg-desktop-portal-hyprland \
       swaybg \
       swaylock-effects \
       gvfs \
       bluetuith \
       &&

# activate starship
echo -e '\neval "$(starship init bash)"' >> ~/.bashrc
echo -e '\neval "$(starship init zsh)"' >> ~/.zshrc
chsh -s $(which zsh)
