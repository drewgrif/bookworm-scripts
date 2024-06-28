# bookworm-scripts (updated June 28, 2024)

## X11 Window Managers
Assuming you have already installed a minimal Debian 12 install.
The series of shell scripts are intended to facilitate installing popular window managers.

Within the install.sh file, you can choose to install the following window managers:

* awesome 
* bspwm
* dk 
* dwm
* fluxbox
* i3
* icewm
* openbox
* qtile

**User can select between vanilla(non-customized) and completely customized (my personal customization)** 

``` 
wget https://github.com/drewgrif/bookworm-scripts/raw/main/install.sh

chmod +x install.sh

./install.sh

rm install.sh

```
## NOTE
###Every window manager (except icewm) should have a HELP keybinding:  Super + h
If you installed a custom script above (ex. dwm), a new directory will be located at ~/scripts


#### With regard to other scripts:
* changevolume.sh - used by all custom window managers
* discord-install.sh - installs the newest discord quickly from the current binary files.
* discord-update.sh - updates the discord application if you used the discord-install.sh
* neovim.sh - neovim in the Debian packages is somewhat dated.  This installs the newest from github.
* redshift-on/off - used as a keybinding for turning redshift on or off.
* thunderbird_install.sh - installs the newest thunderbird on Debian.
* thunderbird_remove.sh - removes the above thunderbird_install.sh application.


## Wayland compositor
#### sway-install.sh (new script coming soon)

```
git clone https://github.com/drewgrif/bookworm-scripts

cd bookworm-scripts

./sway-install.sh

```

Recently, I have been thinking about getting a jump on adding a window manager for Wayland.  Fortunately, there is a good "compositor" for this purpose.
Added scripts:

* sway-install.sh
* custom-sway.sh - replaces the default configuration files with my own.
* nwg-look - installs an lxappearance program to use GTK themes and icons in Wayland.
* rofi-wayland - designed to behave like rofi(xorg) but in Wayland.

NOTE:  The recommended login manager will be gdm3 or sddm.
