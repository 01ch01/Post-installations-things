# by https://github.com/01ch01

cd $HOME && rm -r Documents Music Public Templates

mkdir Downloads/softwares $HOME/.themes && cd Downloads/softwares

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

# APT install and purge pkgs
sudo apt update && sudo apt install -y snapd balena-etcher-electron flatpak synaptic terminator git htop vlc gparted vim g++ gdb catfish gufw transmission python3-pip redshift-gtk gnome-disk-utility numix-icon-theme gnome-screenshoot fonts-firacode telegram-desktop apt-transport-https code
sudo apt purge -y parole pidgin gimp system-config-printer xfburn simple-scan gnome-mines gnome-sudoku sgt-launcher sgt-puzzles thunderbird xfce4-screenshooter

# Some cleanup stuff
sudo apt install -y -f && sudo apt autoremove && sudo apt autoclean && sudo apt clean

# Install snap pkgs
sudo snap install spotify gimp

# Encryptr (Password Manager)
wget -c http://www.spideroak.com/release/Encryptr/deb_x64
sudo dpkg -i deb_x64

# NetBeans 8.2 (IDE for Java)
#wget -c https://download.netbeans.org/netbeans/8.2/final/bundles/netbeans-8.2-javase-linux.sh

# Dropbox client
wget -c https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2020.03.04_amd64.deb

# MEGASync (MEGA client)
#wget -c https://mega.nz/linux/MEGAsync/xUbuntu_19.04/amd64/megasync-xUbuntu_19.04_amd64.deb

# Mantis theme
wget -c https://codeload.github.com/mantissa-/mantis-theme/zip/master

unzip master
cd mantis-theme-master
mv Mantis* $HOME/.themes
cd ..

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
code --install-extension xabikos.javascriptsnippets --force

# Setting git
git config --global user.name "01ch01"
git config --global user.email "00claudio.henrique@gmail.com"
git config --global color.ui auto
