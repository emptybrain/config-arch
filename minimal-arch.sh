mkdir ~/.config
mkdir ~/.local/share/fonts -p 

sudo pacman -Sy --noconfirm archlinux-keyring ; sudo pacman -Syyu --noconfirm ; sudo pacman -Sy --noconfirm --needed base-devel 

sudo pacman -Syy --noconfirm sddm i3-gaps picom btop htop seahorse lxappearance 
sudo pacman -Syy --noconfirm nitrogen flameshot dmenu  numlockx wget xss-lock mpv polybar nautilus  
sudo pacman -Syy --noconfirm fluent-gtk-theme-gitbibata-cursor-theme gnome-keyring polkit-gnome  unzip
sudo pacman -Syy --noconfirm google-chrome visual-studio-code-bin kitty btrfs-assistant  github-desktop zsh feh 
sudo pacman -Syy --noconfirm ripgrep exa lazygit  font-manager libgnome-keyring
sudo pacman -Syy --noconfirm pipewire-pulse  pipewire-media-session pavucontrol


echo "adding chaotic-aur"
sudo pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key FBA220DFC880C036
sudo pacman -U --noconfirm 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'
clear

echo "
[chaotic-aur]
Include = /etc/pacman.d/chaotic-mirrorlist" | sudo tee -a /etc/pacman.conf


sudo pacman -Syyu
sudo pacman -Syy --noconfirm yay

yay -Syy --noconfirm  rofi-power-menu betterlockscreen i3-resurrect linux-xanmod-lts linux-xanmod-edge update-grub grub-btrfs timeshift-autosnap 


###################
echo "install get-pip"
curl https://bootstrap.pypa.io/get-pip.py | python
####################


clear


systemctl enable --user gnome-keyring-daemon.service
systemctl enable --user pipewire-pulse.service


sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 "https://github.com/romkatv/powerlevel10k.git" ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k



