sudo apt-get -y install diodon   # clipboard
sudo apt-get -y install redshift # flux for linux
sudo apt-get -y install xclip    # allows pipe to xclip
sudo apt-get -y install gcp      # copy with progress
sudo apt-get -y install zsh      # copy with progress
sudo apt-get -y install vim
sudo apt-get -y install powerline
sudo apt-get -y install arp-scan


####DOCKER
sudo usermod -aG docker `whoami`

#oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"


#remove ubuntu unnecessary lenses
sudo apt-get purge unity-scope-audacious unity-scope-chromiumbookmarks unity-scope-clementine unity-scope-colourlovers unity-scope-devhelp unity-scope-firefoxbookmarks unity-scope-gdrive unity-scope-gmusicbrowser unity-scope-gourmet unity-scope-manpages unity-scope-musique unity-scope-openclipart unity-scope-texdoc unity-scope-tomboy unity-scope-video-remote unity-scope-yelp unity-scope-zotero unity-lens-music unity-lens-photos unity-lens-video


#bing wallpaper
sudo cp bing-wallpapers/changer-cron /etc/cron.hourly/changer

#powerline fonts
#mkdir ~/git && cd ~/git && git clone https://github.com/powerline/fonts
#~/git/fonts/install.sh




#spf13
curl http://j.mp/spf13-vim3 -L -o - | sh
echo "let g:airline_powerline_fonts=1" >> ~/.vimrc.before.local
cd ~/git && git clone https://github.com/vim-airline/vim-airline-themes
cp ~/git/vim-airline-themes/* ~/.vim
echo "let g:airline_theme='dark'" >> ~/.vimrc.local


#chromium
cd ~/git && git clone https://github.com/scheib/chromium-latest-linux
~/git/chromium-latest-linux/update-and-run.sh


