#!/bin/bash

echo -e "\033[1;32m🔥 Ussu's Sexy Kali Setup is Installing... 🔥\033[0m"

# Update & Install Essential Tools
sudo apt update && sudo apt install -y \
kali-linux-everything \
seclists exploitdb gobuster feroxbuster bloodhound neo4j \
powershell enum4linux crackmapexec dirsearch eyewitness \
bat libimage-exiftool-perl python3-pip flameshot terminator \
zsh lolcat figlet btop nala cmatrix toilet hollywood git wget curl

# Python tools
sudo pip3 install mitm6 impacket

# Clone missing tools
git clone https://github.com/carlospolop/PEASS-ng.git ~/PEASS
git clone https://github.com/danielmiessler/SecLists.git ~/SecLists
git clone https://github.com/m8r0wn/Enumerate-This.git ~/Enumerate-This
git clone https://github.com/swisskyrepo/PayloadsAllTheThings.git ~/PayloadsAllTheThings
git clone https://github.com/Tib3rius/AutoRecon.git ~/AutoRecon && \
cd ~/AutoRecon && sudo python3 -m pip install -r requirements.txt

# Install Neofetch from GitHub
git clone https://github.com/dylanaraps/neofetch.git ~/neofetch && \
sudo ln -s ~/neofetch/neofetch /usr/local/bin/neofetch

# Download sexy wallpapers
mkdir -p ~/Wallpapers && wget -P ~/Wallpapers \
https://images6.alphacoders.com/133/1332456.png \
https://images8.alphacoders.com/132/1328015.png \
https://images4.alphacoders.com/130/1308711.png

# Set sexy terminal
echo 'clear' >> ~/.zshrc
echo 'figlet "WELCOME USSŪ" | lolcat' >> ~/.zshrc
echo 'neofetch | lolcat' >> ~/.zshrc
echo 'alias hackshow="hollywood"' >> ~/.zshrc
chsh -s /bin/zsh

echo -e "\033[1;35m✨ Done! Restart terminal and enjoy the hacker drip!\033[0m"
