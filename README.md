# bookworm-scripts (updated June 28, 2024)

## X11 Window Managers
Assuming you have already installed a minimal Debian 12 install.
The series of shell scripts are intended to facilitate installing popular window managers.

Within the install.sh file, you can choose to install the following window managers:

* awesome 
* bspwm
* dk 
* [dwm](/documentation/dwm.md)
* fluxbox
* i3
* icewm
* openbox
* qtile

**User can select between vanilla(non-customized) and completely customized (my personal customization)** 

# Installation

``` 
wget https://github.com/drewgrif/bookworm-scripts/raw/main/install.sh

chmod +x install.sh

./install.sh

rm install.sh

```
## HELP keybinding:  Super + h
If you installed a custom script above (ex. dwm), a new directory will be located at ~/scripts

#### With regard to other scripts:
* changevolume.sh - used by all custom window managers
* discord-install.sh - installs the newest discord quickly from the current binary files.
* discord-update.sh - updates the discord application if you used the discord-install.sh
* neovim.sh - neovim in the Debian packages is somewhat dated.  This installs the newest from github.
* redshift-on/off - used as a keybinding for turning redshift on or off.
* thunderbird_install.sh - installs the newest thunderbird on Debian.
* thunderbird_remove.sh - removes the above thunderbird_install.sh application.
