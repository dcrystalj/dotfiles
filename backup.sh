#! /bin/sh
BDIR="${1:-/home/dcrystalj/git/dotfiles/}"

cp /etc/sudoers ./sudoers
cp ~/.config/youtube-dl/config $BDIR.config/youtube-dl/config
cp ~/.config/mpv/mpv.conf $BDIR.config/mpv/mpv.conf
cp ~/.vimrc.local $BDIR
cp ~/.zshrc $BDIR
cp ~/.tmux.conf $BDIR

