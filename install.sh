#!/bin/sh

PI_DIR=`dirname "$0"`

sudo apt install \
  xscreensaver \
  xscreensaver-screensaver-bsod \
  feh \
  omxplayer
  
sudo pip install -U instalooter

cp -a $PI_DIR/xsession $HOME/.xsession
chmod 755 $HOME/.xsession
