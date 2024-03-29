# Atomic Color Scheme

Colors have been recalculated in 2023 using HSLuv!

### Multiple colors for multiple applications

Atomic is a dark color scheme designed to use with terminals. This repository provides support for URxvt and XTerm; it also includes themes for some terminal applications (vim-airline, irssi, mutt, cmus, vifm) and Zsh. To use it in Vim/Neovim, check the repository [vim-atomic](https://github.com/gerardbm/vim-atomic).

![Atomic Space Screenshot](https://github.com/gerardbm/atomic/blob/master/img/screenshots/Atomic-Space-Screenshot.png)

![Atomic Night Screenshot](https://github.com/gerardbm/atomic/blob/master/img/screenshots/Atomic-Night-Screenshot.png)

![Atomic Light Screenshot](https://github.com/gerardbm/atomic/blob/master/img/screenshots/Atomic-Light-Screenshot.png)

### Color palette

The color palette consists of **sixteen precision colors** selected procedurally (algorithms), distributed in six hues and four perceived lightness, according to the color space **HSLuv** («_an alternative to HSL designed for perceptual uniformity based on human experiments_».

Don't confuse the perceived brightness with the lightness of the HSL color model. Human vision doesn't detect brightness linearly with color: in a pixel (R'G'B') we see red color (`#FF0000`) darker than green color (`#00FF00`), and green color (`#00FF00`) brighter than red (`#FF0000`) and blue (`#0000FF`) colors.

So the perceived lightness has been balanced according to the ITU-R Recommendation BT.709:

`Luma (Y') = 0.2126 R' + 0.7152 G' + 0.0722 B'`

In a RGB color wheel, hues have been selected in order to be distinguishable for the human eye and keeping harmony: that means **one color every 60°**.

**Space Mode**: base colors use the blue color (hue 240°).

![Atomic-scheme](https://github.com/gerardbm/Atomic/blob/master/img/atomic-space-mc.png)

**Onion Mode**: base colors use the purple color (hue 300°).

This is an alternative mode with purple color.

![Atomic-scheme](https://github.com/gerardbm/Atomic/blob/master/img/atomic-onion-mc.png)

**Blood Mode**: base colors use the red color (hue 0°).

This is an alternative mode with red color.

![Atomic-scheme](https://github.com/gerardbm/Atomic/blob/master/img/atomic-blood-mc.png)

**Night Mode**: base colors use the orange color (hue 60°).

This is an alternative mode with orange color.

![Atomic-scheme](https://github.com/gerardbm/Atomic/blob/master/img/atomic-night-mc.png)

**Grass Mode**: base colors use the green color (hue 120°).

This is an alternative mode with green color.

![Atomic-scheme](https://github.com/gerardbm/Atomic/blob/master/img/atomic-grass-mc.png)

**Ocean Mode**: base colors use the cyan color (hue 180°).

This is an alternative mode with cyan color.

![Atomic-scheme](https://github.com/gerardbm/Atomic/blob/master/img/atomic-ocean-mc.png)

**Light Mode**: base colors use the orange color (hue 60°).

Light mode is useful when the screen receives a high illumination or we have to code in a bright environment. Our eyes will not have to adapt the light sensibility every time we look at the screen.

![Atomic-scheme](https://github.com/gerardbm/Atomic/blob/master/img/atomic-light-mc.png)

### Code editors and IDEs

- [x] Terminal
	- [x] URxvt (`.Xresources`)
	- [x] XTerm (`.Xresources`)
- [x] [Vim and Neovim](https://github.com/gerardbm/vim-atomic)
	- [x] Vim-airline (included in [vim-airline](https://github.com/vim-airline/vim-airline))

### Themes

- [x] Irssi
- [x] Mutt
- [x] Cmus
- [x] Vifm
- [x] Zsh
- [x] Rofi (`.Xresources`)

## Installation

Atomic themes for cmus, irssi, mutt, vifm and zsh can be installed using the script `install.sh`. For example, to copy `atomic.zsh-theme` into its path use the following command:

`./install.sh -m copy zsh`

If you want to 'symlink' instead of 'copy', use the symlink option:

`./install.sh -m symlink cmus irssi`

Atomic colorscheme for Vim and Neovim can be installed directly from the following repository: [gerardbm/vim-atomic](https://github.com/gerardbm/vim-atomic).

Atomic theme for vim-airline is available from the official repository, just type: `:AirlineTheme atomic`.

Atomic colorscheme for Sublime Text is available from the official package manager.

For more specific information, read the following articles:

1. Installation for [terminals](https://github.com/gerardbm/atomic/blob/master/INSTALL_TERM.md) (URxvt, XTerm).
2. Installation for [code editors](https://github.com/gerardbm/atomic/blob/master/INSTALL_EDITORS.md) (Vim, Neovim, vim-airline).
3. Installation for [command-line tools](https://github.com/gerardbm/atomic/blob/master/INSTALL_TOOLS.md) (cmus, irssi, mutt, vifm, zsh).

- - -

## Font family

Atomic is designed to look good with any kind of typography, as colors are distinguishable to any thickness.

Some themes (vim-airline, zsh) require the installation of Powerline fonts.
URL: https://github.com/powerline/fonts

## Testing Atomic

![Testing Atomic with vim](https://github.com/gerardbm/atomic/blob/master/img/screenshots/vim.png)

![Testing Atomic with cmatrix](https://github.com/gerardbm/atomic/blob/master/img/screenshots/cmatrix.png)

## Old atomic color scheme

Check the [old-atomic](https://github.com/gerardbm/old-atomic) repository for old colors (selected using different algorithms).
