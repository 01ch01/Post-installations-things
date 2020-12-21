# by https://github.com/01ch01

cd $HOME && rm -r Documents Music Public Templates

mkdir Downloads/softwares $HOME/.themes && cd Downloads/softwares

sudo apt update && sudo apt upgrade -y && sudo apt install -f -y

sudo apt update && sudo apt install -y snapd synaptic terminator git htop vlc gparted vim g++ gufw python3-pip redshift-gtk gnome-disk-utility fonts-firacode telegram-desktop balena-etcher-electron

sudo snap install spotify gimp discord && sudo snap install code --classic

sudo apt purge -y parole pidgin gimp system-config-printer xfburn simple-scan gnome-mines gnome-sudoku sgt-launcher sgt-puzzles thunderbird

cd ~/Downloads/softwares

wget -c https://codeload.github.com/mantissa-/mantis-theme/zip/master && unzip master

cd mantis-theme-master

sudo mv Mantis 'Mantis Dusk' 'Mantis Night' /usr/share/themes/

cd ..

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo dpkg -i google-chrome-stable_current_amd64.deb 

git config --global user.name "01ch01"

git config --global user.email "00claudio.henrique@gmail.com"

git config --global color.ui auto

wget -c https://github.com/PapirusDevelopmentTeam/papirus-icon-theme/archive/master.zip

unzip master.zip

cd papirus-icon-theme-master

sudo mv Papirus* ePapirus/ /usr/share/icons/

gtk-update-icon-cache /usr/share/icons/ePapirus/

gtk-update-icon-cache /usr/share/icons/Papirus/

gtk-update-icon-cache /usr/share/icons/Papirus-Dark/

gtk-update-icon-cache /usr/share/icons/Papirus-Light/
