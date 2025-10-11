# install flatpak
sudo pacman -S flatpak

# install paru
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ..
rm -rf paru
# install pipx
# run script to recusively install all packages in pkgs.yml
# run tweaks
# copy dotfiles
