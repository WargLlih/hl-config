#!/bin/bash

sudo pacman -S git \
               neovim \
               wl-clipboard \
               alsa-utils \
               zsh \
               polkit-gnome \ # polkit-gnome: needed to get superuser access on some graphical appliaction
               sof-firmware \
               waybar \ # waybar: Waybar now has hyprland support
               pulseaudio \
               hyprpaper \
               adobe-source-han-sans-cn-fonts \
               filelight \
               zsh-autosuggestions \
               zsh-syntax-highlighting \
               ripgrep \
               &&


yay -S mako \ # mako: This is a graphical notification daemon
       thunar \ # thunar: This is a graphical file manager
       gvfs \ # gvfs: adds missing functionality to thunar such as automount usb drives
       starship \ # starship: allows to customize the shell prompt
       swappy \ # swappy: This is a screenshot editor tool
       grim \ # grim: This is a screenshot tool it grabs images from a Wayland compositor
       slurp \ # slurp: This helps with screenshots, it selects a region in a Wayland compositor
       pamixer \ # pamixer: This helps with audio settings such as volume
       brightnessctl \ # brightnessctl: used to control monitor bright level
       wayland \
       ttf-jetbrains-mono-nerd \
       noto-fonts-emoji \
       bluez \ # bluez: the bluetooth service
       xdg-desktop-portal-hyprland \ # xdg-desktop-portal-hyprland: xdg-desktop-portal backend for hyprland
       swaylock-effects \ # swaylock-effects: This allows for the locking of the desktop its a fork that adds some editional visual effects
       bluetuith \
       wofi \ # wofi: This is an application launcher menu
       &&

# activate starship
echo -e '\neval "$(starship init bash)"' >> ~/.bashrc
chsh -s $(which zsh)
