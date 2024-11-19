#!/usr/bin/bash

echo "WELCOME! Now we will customize Arch Terminal"
echo "Created by VietPQ"

sudo pacman -Syu --noconfirm

cd ~

echo "Download some terminal tool"
sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ~
rm -rf ~/yay
sudo pacman -S --noconfirm perl-image-exiftool make tmux btop cmatrix cowsay unzip wget dpkg fzf eza
git clone https://github.com/pipeseroni/pipes.sh.git
cd pipes.sh
sudo make install
cd ..
rm -rf pipes.sh

echo "Download gdb-gef"
sudo pacman -S gdb --noconfirm
bash -c "$(curl -fsSL https://gef.blah.cat/sh)"

echo "Download pokemon-colorscripts"
git clone https://gitlab.com/phoneybadger/pokemon-colorscripts.git
cd pokemon-colorscripts
sudo ./install.sh
cd ..
rm -rf ~/pokemon-colorscripts

echo 'Download file config'
sudo wget https://github.com/VietPQ685/auto-setup-LT/releases/latest/download/config.zshrc -O .zshrc
mkdir ~/.poshthemes
cd ~/.poshthemes
sudo wget https://github.com/VietPQ685/auto-setup-LT/releases/latest/download/viet.omp.json -O viet.omp.json
mkdir -p ~/.config/fastfetch
cd ~/.config/fastfetch
sudo wget https://github.com/VietPQ685/auto-setup-LT/releases/latest/download/arch.jsonc -O config.jsonc
cd ~

echo "Config Oh-My-Posh"
sudo pacman install wget -y
sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh

echo "Download Fastfetch"
sudo pacman -S fastfetch --noconfirm

echo "Config Zsh"
sudo pacman -S zsh --noconfirm
chsh -s /usr/bin/zsh
