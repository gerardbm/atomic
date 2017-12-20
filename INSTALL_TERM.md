# Installation for terminals

## URxvt and XTerm

Installation for **URxvt** and **XTerm** (include extra modes with +5% contrast).

1. Copy the content from the files `Xresources.*` to your `.Xresources`.
2. Load the resource file with the command: `xrdb ~/.Xresources`.
3. Restart the terminal.

You will find more information on the .Xresources file in the [Arch Linux wiki](https://wiki.archlinux.org/index.php/X_resources).

## xfce4-terminal

Installation for **xfce4-terminal** (include extra modes with +5% contrast).

1. Copy the file `terminalrc` to your `~/.config/xfce4/terminal/` directory or paste its content into it if you already have this file.
2. Restart the terminal.

## konsole

Installation for **konsole** (only dark blue mode is available):

1. Copy the file `Atomic.colorscheme` to `~/.kde/share/apps/konsole/` directory (or `~/.local/share/konsole/` directory if your KDE version is 5).
2. Open your terminal: `Settings` > `Edit Current Profile` > `Appearance` and choose «Atomic».
