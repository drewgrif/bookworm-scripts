# dwm 

This document explains the https://github.com/drewgrif/bookworm-scripts install script which gives the user a choice between a vanilla dwm installation and a fully customized installation.

NOTE:  Intended for Debian Bookworm use but may work with debian-based distros.  *No guarantees*

## Vanilla Install

* dwm
* st
* slstatus
* slock
* dmenu

These are installed via git://git.suckless.org 
**No patches are installed**
**BARE BONES - no software**
Choose whether you want:

## Custom Install

NOTE: The configured dwm has a list of keybinds at Super + h.

Further, if you want a customized dwm with these patches:

* dwm-alwayscenter
* dwm-attachbottom
* dwm-autostart
* dwm-fixborders
* dwm-focusadjacenttag
* dwm-focusedontop
* dwm-focusonnetactive
* dwm-movestack
* dwm-pertag
* dwm-restartsig
* dwm-scratchpads
* dwm-status2d-systray
* dwm-vanitygaps
* dwm-windowfollow

#### The autostart file is located at ~/.local/share/dwm/autostart.sh**
#### This config is also using both the dwm config and sxhkd for keybindings.


My config looks like this


![2024-06-04-173427_3440x1440_scrot](https://github.com/drewgrif/suckless-tools/assets/11249871/bd3a367f-ddf1-4d29-9c59-cdb61efc999a)
