#!/bin/bash

me=`whoami`

sudo apt-get -y install 7z       #zip
sudo apt-get -y install unzip    #unzip
sudo apt-get -y install zip   #zip
#sudo apt-get -y install diodon   # clipboard  moved down
sudo apt-get -y install git
sudo apt-get -y install redshift # flux for linux
sudo apt-get -y install xclip    # allows pipe to xclip
sudo apt-get -y install gcp      # copy with progress
sudo apt-get -y install zsh      # copy with progress
sudo apt-get -y install vim
sudo apt-get -y install powerline
sudo apt-get -y install arp-scan #hacking tools
sudo apt-get -y install mpv      #video player
sudo apt-get -y install tmux
sudo apt-get -y install python3-pip
sudo apt-get -y install ipython3
sudo apt-get -y install shutter #screenshot manager + easy share / upload
sudo apt-get -y install qbittorrent
sudo apt-get -y install imagemagick
sudo apt-get -y install gparted
sudo apt-get -y install tuptime #control time, reboot ...
sudo apt-get -y install tig # easy git log
sudo apt-get -y install build-essentials # easy git log

#neofetch - show system status
sudo add-apt-repository ppa:dawidd0811/neofetch
sudo apt-get update
sudo apt-get -y install neofetch

#clipboard manager
sudo apt-get -y install glipper

#git
mkdir ~/git
git config --global user.name "dcrystalj"
git config --global user.email "dcrystalj@gmail.com"
git config --global push.default simple

####DOCKER
sudo usermod -aG docker `whoami`

#oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"



#powerline fonts
#mkdir ~/git && cd ~/git && git clone https://github.com/powerline/fonts --depth 1
#~/git/fonts/install.sh



#spf13
sudo apt-get install curl
curl http://j.mp/spf13-vim3 -L -o - | sh
echo "let g:airline_powerline_fonts=1" >> ~/.vimrc.before.local
cd ~/git && git clone https://github.com/vim-airline/vim-airline-themes --depth 1
cp -r ~/git/vim-airline-themes/* ~/.vim
echo "let g:airline_theme='dark'" >> ~/.vimrc.local
cp .vimrc.bundles.local ~/
cp .vimrc.local ~/
vim -c ':PluginInstall'


#skype
#wget http://download.skype.com/linux/skype-ubuntu-precise_4.3.0.37-1_i386.deb
#sudo dpkg -i skype-ubuntu-precise_4.3.0.37-1_i386.deb



#change capslock to ctrl
sudo echo "@reboot setxkbmap -layout us -option ctrl:nocaps" | sudo tee -a /var/spool/cron/crontabs/root
sudo echo "0 * * * * setxkbmap -layout us -option ctrl:nocaps" | sudo tee -a /var/spool/cron/crontabs/root


#sensors
sudo apt-get install -y lm-sensors
yes | sudo sensors-detect
yes | sudo service kmod start

#all configs
cp -r .tmux.conf ~/
cp -r .zshrc ~/


#move luncher to bottom
#sudo gsettings set com.canonical.Unity.Launcher launcher-position Bottom

#disable non-usefull services
#sudo systemctl disable bluetooth.service

#fix touchpad on lenovo yoga 2 pro
#sudo cp 50-synaptics.conf /usr/share/X11/xorg.conf.d/50-synaptics.conf


#safety for accident removal with rm -rf
touch ~/-@
sudo touch /-@
sudo touch /root/-@


#HOME FOLDER
mkdir ~/torrents
