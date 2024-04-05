# bookworm-scripts

### installer.sh
Assuming you have already installed a minimal Debian 12 install.
The series of shell scripts are intended to facilitate installing popular window managers.

Within the installer.sh file, you can choose to install the following window managers:
* bspwm
* dk 
* dwm
* qtile
* i3

**Uncomment the lines in the bash script to enable installation.**

#### With regard to other scripts:
* custom.sh - installs my current configurations for all window managers.
* discord-install.sh - installs the newest discord quickly from the current binary files.
* lapce.sh - installs the alpah version of the Lapce text editor.  
* ly.sh - installs the ly console manager (careful if you already have lightdm installed)
* neovim.sh - neovim in the Debian packages is somewhat dated.  This installs the newest from github.
* orchis.sh - installs some gtk themes and icons for your gui.
* teal.sh - installs teal colored gtk theme and icon set
* blue.sh - installs blue colored gtk theme and icon set
* thunderbird_install.sh - installs the newest thunderbird on Debian.

### NEW sway-install.sh added
Recently, I have been thinking about getting a jump on adding a window manager for Wayland.  Fortunately, there is a good "compositor" for this purpose.
Added scripts:

* sway-install.sh
* custom-sway.sh - replaces the default configuration files with my own.
* nwg-look - installs an lxappearance program to use GTK themes and icons in Wayland.
* rofi-wayland - designed to behave like rofi(xorg) but in Wayland.
