#!/bin/bash
#
# define user and group
sudo useradd -u 1337 -m -s /bin/zsh -p $(openssl passwd -1 allfun) -G sudo allfun

# update system
su - allfun
sudo apt update
sudo apt upgrade

# set keyboard & wallpaper
xfconf-query -c keyboard-layout -p /Default/XkbLayout -s gb
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorVirtual1/workspace0/last-image -s /usr/share/backgrounds/kali-16x9/kali-cubism.jpg

# install nerdfont
mkdir ~/.local/share/fonts && cd $_
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraCode.zip
unzip FiraCode.zip && rm FiraCode.zip
fc-cache -f -v

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install tilix & add to panel
sudo apt install tilix dconf-cli
git clone https://github.com/MichaelThessel/tilix-gruvbox.git
cd tilix-gruvbox
sudo cp gruvbox-* /usr/share/tilix/schemes
cd ..
rm -rf tilix-gruvbox
dconf load /com/gexperts/Tilix/ <~/dotfiles/setup/tilix.dconf
xfce4-panel-profiles load ~/dotfiles/setup/allfun.panels
