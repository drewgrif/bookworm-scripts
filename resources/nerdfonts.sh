#!/bin/bash
sudo apt install unzip -y

mkdir -p ~/.local/share/fonts

cd /tmp
fonts=( 
"CascadiaCode"
"FiraCode" 
"Go-Mono" 
"Hack"  
"Iosevka" 
"JetBrainsMono" 
"Mononoki" 
"RobotoMono" 
"SourceCodePro" 
"UbuntuMono"
)

for font in ${fonts[@]}
do
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/$font.zip
	unzip $font.zip -d $HOME/.local/share/fonts/$font/
    rm $font.zip
done
fc-cache
