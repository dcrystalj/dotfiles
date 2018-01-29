#! /bin/sh
BDIR=/home/dcrystalj/git/dotfiles/

cp /etc/sudoers .
cp ~/.config/mpv/mpv.conf $BDIR.config/mpv/mpv.conf
cp ~/.vimrc.local $BDIR
cp ~/.zshrc $BDIR

