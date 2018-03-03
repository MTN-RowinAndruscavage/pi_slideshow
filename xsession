# Pull updates to script
ping -c 1 github.com && pushd pi_slideshow ; git pull ; popd

# Start main slideshow loop
./pi_slideshow/slideshow.sh

# Display BSOD screensaver if slideshow script dies for some reason
/usr/lib/xscreensaver/bsod -geometry 1920x1080-0-0

# Press ESC to boot into GUI for troubleshooting
/usr/bin/startlxde-pi
