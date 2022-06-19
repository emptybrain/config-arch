wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraMono.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/RobotoMono.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Meslo.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/JetBrainsMono.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hasklig.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/2.2.0-RC/Iosevka.zip

sleep 5

unzip -o '*.zip' -d ~/.local/share/fonts
cp CourierPrimeCode-Nerd-Font.ttf ~/.local/share/fonts

sleep 3
sudo fc-cache -sfv