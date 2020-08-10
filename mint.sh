# by https://github.com/01ch01

cd $HOME && rm -r Documents Music Public Templates

mkdir Downloads/softwares && cd Downloads/softwares

sudo apt update && sudo apt upgrade -y

# Add VSCode repo
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

# Install and purge apt packages
sudo apt update && sudo apt install -y terminator git gparted vim g++ gdb python3-pip dropbox htop neofetch atril flatpak spotify-client fonts-firacode vlc apt-transport-https code gimp telegram-desktop
sudo apt purge -y xplayer system-config-printer tomboy simple-scan hexchat thunderbird xreader rhythmbox celluloid

# Encryptr (password manager)
wget -c http://www.spideroak.com/release/Encryptr/deb_x64
sudo dpkg -i deb_x64

# Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb

# NodeJS
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs

# Discord
wget -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo dpkg -i discord.deb

# Fix stuff
sudo apt install -y -f && sudo apt autoremove && sudo apt autoclean && sudo apt clean 

# Set Terminator config
mkdir -p ${HOME}/.config/terminator && cd ${HOME}/.config/terminator
wget "https://raw.githubusercontent.com/01ch01/EditConfig/master/config"

# Set VIM config
cd $HOME
wget "https://raw.githubusercontent.com/01ch01/EditConfig/master/.vimrc"

# Setting vscode keybindings and settings
mkdir -p ${HOME}/.config/Code/User/ && cd ${HOME}/.config/Code/User/
wget "https://raw.githubusercontent.com/01ch01/EditConfig/master/vscode/keybindings.json"
wget "https://raw.githubusercontent.com/01ch01/EditConfig/master/vscode/settings.json"

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
code --install-extension xabikos.javascriptsnippets --force
code --install-extension esbenp.prettier-vscode --force
code --install-extension visualstudioexptteam.vscodeintellicode --force
code --install-extension artdiniz.quitcontrol-vscode --force
code --install-extension tyriar.sort-lines --force

# Setting git
git config --global user.name "01ch01"
git config --global user.email "00claudio.henrique@gmail.com"
git config --global color.ui auto

# Flatpak apps
flatpak install discord



