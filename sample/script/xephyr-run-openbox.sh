#!/usr/bin/env bash


################################################################################
### Head: Main
##

Xephyr :100 -ac -screen 1280x680 &
XEPHYR_PID=$!
sleep 0.5

DISPLAY=:100 openbox-session
kill ${XEPHYR_PID}

##
### Tail: Main
################################################################################




################################################################################
### Head: Note
##


##
## ## Original Script
## * https://github.com/worron/awesome-config/blob/master/scripts/run-with-xephyr.sh
##


##
## ## Reference
## * https://wiki.archlinux.org/index.php/Xephyr
##


##
## ## Install xserver-xephyr
##
## run
##
## ``` sh
## sudo apt-get install xserver-xephyr
## ```
##


##
## ## Install this script
##
## run
##
## ``` sh
## mkdir -p /.local/bin
## cp xephyr-run-openbox.sh ~/.local/bin/
## ```
##


##
## ## Openbox xsession
##
## run
##
## ``` sh
## grep '^Exec=' /usr/share/xsessions/openbox.desktop
## ```
##
## show
##
## ```
## Exec=/usr/bin/openbox-session
## ```
##


##
## ## Display resolution
##
## run
##
## ``` sh
## xrandr
## ```
##


##
### Tail: Note
################################################################################
