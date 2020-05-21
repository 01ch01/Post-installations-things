# by https://github.com/01ch01

cd $HOME && rm -r Documents Music Public Templates

mkdir Downloads/softwares && cd Downloads/softwares

sudo apt update && sudo apt upgrade -y

# Add Etcher (create bootable flashdrives) repo
echo "deb https://deb.etcher.io stable etcher" | sudo tee /etc/apt/sources.list.d/balena-etcher.list
sudo apt-key adv --keyserver hkps://keyserver.ubuntu.com:443 --recv-keys 379CE192D401AB61

# Import GPG keys into APT repo
sudo -E apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 5044912E

# Add VSCode repo
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

# Install and purge apt packages
sudo apt update && sudo apt install -y snapd balena-etcher-electron terminator git gparted vim g++ gdb python3-pip openjdk-8-jdk* dropbox htop neofetch atril flatpak spotify-client fonts-firacode vlc apt-transport-https code
sudo apt purge -y xplayer gimp system-config-printer tomboy simple-scan hexchat thunderbird xreader rhythmbox celluloid

sudo apt install -y -f && sudo apt autoremove && sudo apt autoclean && sudo apt clean

# Snap pkgs
sudo snap install gimp telegram-desktop 

# Encryptr (password manager)
wget -c http://www.spideroak.com/release/Encryptr/deb_x64
sudo dpkg -i deb_x64

# Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb

# Setting vscode keybindings and settings
wget "https://raw.githubusercontent.com/01ch01/EditConfig/master/vscode/keybindings.json" && mv keybindings.json ${HOME}/.config/Code/User/
wget "https://raw.githubusercontent.com/01ch01/EditConfig/master/vscode/settings.json" && mv settings.json ${HOME}/.config/Code/User/

# Setting vscode extensions (for vscode insiders version shift from 'code' to 'code-insiders')
code --install-extension ms-vscode.cpptools --force
code --install-extension naumovs.color-highlight --force
code --install-extension dracula-theme.theme-dracula --force
code --install-extension dbaeumer.vscode-eslint --force
code --install-extension abusaidm.html-snippets --force
code --install-extension akamud.vscode-javascript-snippet-pack --force
code --install-extension ritwickdey.liveserver --force
code --install-extension davidanson.vscode-markdownlint --force
code --install-extension ms-python.python --force
code --install-extension 2gua.rainbow-brackets --force
code --install-extension jevakallio.vscode-hacker-typer --force
code --install-extension jpoissonnier.vscode-styled-components --force
code --install-extension angelo-breuer.clock --force

# Setting git
git config --global user.name "01ch01"
git config --global user.email "00claudio.henrique@gmail.com"
git config --global color.ui auto
