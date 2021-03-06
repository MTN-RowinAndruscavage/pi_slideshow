# pi_slideshow

Quick and dirty Raspberry Pi Instagram slideshow

This simply runs instaLooter to download all the photos and vids from an instagram feed
and displays on the screen using the RPi-optimized omxplayer video player and the feh image viewer.

If something exits abnormally, it'll show the BSOD screensaver until you can log in to fix things.

## Prerequisites:

Stock Raspbian, with video output configured and working.
You will want to tweak some things in the Raspberry Pi Configuration (rc_gui) :

 * System | Underscan Disable
 * Performance | GPU Memory: 128  (needed to display HD videos)
 * Localization | (All)

## Installation:

Place videos in /home/pi/Videos directory
From /home/pi , run:

    git clone https://github.com/MTN-RowinAndruscavage/pi_slideshow.git

    # Install dependency packages
    sh pi_slideshow/install.sh

    # Download all the photos and vids from your list of instagram accounts
    ./pi_slideshow/update_instagram.sh   # might want to add a cron job for this to update daily

    # Test the script:
    ./pi_slideshow/slideshow.sh

    # When done, reboot to check that it launches straight into the slideshow script.

## Stopping the script:

Unfortunately, the video playback takes over the display.  The only way to interact with the unit is to plug in a keyboard and blindly type:

    Ctrl-Alt-F1             # brings you to a text console hidden behind the video)
    killall /bin/bash       # stop the script
    killall omxplayer.bin   # stop any videos still running
    
From there, you can press Ctrl-Alt-F7 to return to the GUI, and then 'q' to quit the screensaver that might start running.
Afterwards it'll dump you back into the normal lightdm GUI.

## TODO:

Display custom background image behind cropped videos and photos instead of desktop.
