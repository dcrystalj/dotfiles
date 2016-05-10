#!/bin/bash

me=`whoami`

sudo apt-get -y install diodon   # clipboard
sudo apt-get -y install git
sudo apt-get -y install redshift # flux for linux
sudo apt-get -y install xclip    # allows pipe to xclip
sudo apt-get -y install gcp      # copy with progress
sudo apt-get -y install zsh      # copy with progress
sudo apt-get -y install vim
sudo apt-get -y install powerline
sudo apt-get -y install arp-scan
sudo apt-get -y install mpv
sudo apt-get -y install tmux
sudo apt-get -y install pidgin
sudo apt-get -y install ack-grep
sudo apt-get -y install python3-pip


#git
git config --global user.name "dcrystalj"
git config --global user.email "dcrystalj@gmail.com"
git config --global push.default simple

####DOCKER
sudo usermod -aG docker `whoami`

#oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"


#remove ubuntu unnecessary lenses
sudo apt-get purge unity-scope-audacious unity-scope-chromiumbookmarks unity-scope-clementine unity-scope-colourlovers unity-scope-devhelp unity-scope-firefoxbookmarks unity-scope-gdrive unity-scope-gmusicbrowser unity-scope-gourmet unity-scope-manpages unity-scope-musique unity-scope-openclipart unity-scope-texdoc unity-scope-tomboy unity-scope-video-remote unity-scope-yelp unity-scope-zotero unity-lens-music unity-lens-photos unity-lens-video


#bing wallpaper
cd ~/git && git clone https://github.com/dcrystalj/bing-wallpaper.git
./install.sh


#powerline fonts
#mkdir ~/git && cd ~/git && git clone https://github.com/powerline/fonts
#~/git/fonts/install.sh



#spf13
curl http://j.mp/spf13-vim3 -L -o - | sh
echo "let g:airline_powerline_fonts=1" >> ~/.vimrc.before.local
cd ~/git && git clone https://github.com/vim-airline/vim-airline-themes
cp ~/git/vim-airline-themes/* ~/.vim
echo "let g:airline_theme='dark'" >> ~/.vimrc.local
cp .vimrc.bundles.local ~/
cp .vimrc.local ~/
vim -c ':PluginInstall'


#chromium
cd ~/git && git clone https://github.com/scheib/chromium-latest-linux
~/git/chromium-latest-linux/update-and-run.sh

#sublime
cd ~/Downloads
wget https://download.sublimetext.com/sublime-text_build-3103_amd64.deb
gnome-open sublime-text_build-3103_amd64.deb

#skype
wget http://download.skype.com/linux/skype-ubuntu-precise_4.3.0.37-1_i386.deb
gnome-open skype-ubuntu-precise_4.3.0.37-1_i386.deb

#atom
wget https://atom.io/download/deb
sudo dpkg -i deb
sudo apt-get install -f
cp .atom/config.cson ~/.atom

#nylas
wget https://edgehill.nylas.com/download?platform=linux-deb
sudo dpkg -i 'download?platform=linux-deb'
sudo apt-get install -f
cp .nylas/config.cson ~/.nylas/


#youtube player
echo "@reboot DISPLAY=:0 /usr/bin/python3 /home/$me/git/youtube-mpv/ytdl-server.py3 &" >> /var/spool/cron/crontabs/$me
cd ~/git && git clone https://github.com/agiz/youtube-mpv
pip3 install youtube_dl


#pidgin plugins

	#skype
	 sudo apt-get install libpurple-dev libjson-glib-dev cmake gcc
    cd ~/git && git clone git://github.com/EionRobb/skype4pidgin.git
    cd skype4pidgin/skypeweb
    mkdir build
    cd build
    cmake ..
    cpack
    sudo dpkg -i skypeweb-1.1.0-Linux.deb

	#facebook
	sudo echo "deb http://download.opensuse.org/repositories/home:/dequis/xUbuntu_15.10 ./" >> /etc/apt/sources.list.d/dequis.list
	sudo apt-get update
	sudo apt-get install -y purple-facebook


#change capslock to ctrl
sudo echo "@reboot setxkbmap -layout us -option ctrl:nocaps" >> /var/spool/cron/crontabs/root
sudo echo "0 * * * * setxkbmap -layout us -option ctrl:nocaps" >> /var/spool/cron/crontabs/root


#all configs
cp -r .config ~/
cp -r .ssh ~/
cp -r .purple ~/
cp -r .tmux.conf ~/
cp -r .zshrc ~/
