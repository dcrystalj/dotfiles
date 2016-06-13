#! /bin/sh
BDIR=/home/dcrystalj/git/dotfiles/

cp ~/.config/mpv/mpv.conf $BDIR.config/mpv/mpv.conf
cp ~/.vimrc.local $BDIR
cp ~/.zshrc $BDIR
cp -r ~/.purple $BDIR
rm -fr $BDIR/.purple/logs
rm -fr $BDIR/.purple/accounts.xml

cp ~/.atom/config.cson $BDIR
