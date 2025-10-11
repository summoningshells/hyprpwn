#disable motherboard beep
touch /etc/modprobe.d/nobeep.conf
echo "blacklist pcspkr" > /etc/modprobe.d/nobeep.conf
# beep should be gone after reboot

#set wallpaper
swww img .scirpts/wallpapers/city.gif
