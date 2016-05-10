#!/bin/bash

# Weird, but necessary thing to run with cron.

sessionfile=`/opt/discover_session_bus.sh unity`
#sessionfile=`find "${HOME}/.dbus/session-bus/" -type f | head -n 1`
GSETTINGS_BACKEND=dconf
export `grep "DBUS_SESSION_BUS_ADDRESS" "${sessionfile}" | sed '/^#/d'`


DIR="/home/dcrystalj/Pictures/Bing/"
#PIC=$(ls $DIR/*.jpg | sort -nr | head -n 1)
PIC=$(ls $DIR/*.jpg | sort -R | head -n 1)
/usr/bin/gsettings set org.gnome.desktop.background picture-uri "file://$PIC"
