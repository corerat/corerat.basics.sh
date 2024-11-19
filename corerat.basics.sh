#!/bin/sh
git clone https://github.com/corerat/makepkg.conf.git && \
cd makepkg.conf && \
sudo cp /etc/makepkg.conf /etc/makepkg.conf.bak && \
sudo mv makepkg.conf /etc/makepkg.conf && \
cd .. && \
rm -rf makepkg.conf && \
sudo pacman -Syu base-devel && git clone https://aur.archlinux.org/yay.git && \
cd yay ; makepkg -si && cd .. ; rm yay ; \
yay --save --makepkgconf /etc/makepkg.conf ; \
clear ; yay -g --show ; printf '^ if set to /etc/makepkg.conf, it went alright' ; \
printf '\ndone!\n'
