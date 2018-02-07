# pi_slideshow

Quick and dirty Raspberry Pi Instagram slideshow

This simply runs instaLooter to download all the photos and vids from an instagram feed
and displays on the screen using the RPi-optimized omxplayer video player and the feh image viewer.

If something exits abnormally, it'll show the BSOD screensaver until you can log in to fix things.

## Prerequisites:

Stock Raspbian, with video output configured and working.

## Installation:


    cd . # sorry, this goes right into your /home/pi directory

    git clone https://github.com/MTN-RowinAndruscavage/pi_slideshow.git ./

    # Install dependency packages
    ./install.sh

    # Boot right up to the script
    cp -a xsession ~/.xsession

    # optional to get the BSOD screen working
    nano ~/.xsession   # edit xscreensaver -geometry to match resolution of display

    # Copy any other videos you want include
    # edit update_instagram.sh  and  slideshow.sh  to display those videos

    # Download all the photos and vids from your list of instagram accounts
    ./update_instagram.sh   # might want to add a cron job for this to update daily

    # Test the script:
    ./slideshow.sh

    # When done, reboot to check that it launches straight into the slideshow script.


## TODO:

Display custom background image behind cropped videos and photos instead of desktop.
