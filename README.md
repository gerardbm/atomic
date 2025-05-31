# Atomic Color Scheme

Colors have been recalculated in 2023 using HSLuv!

### Multiple colors for multiple applications

Atomic is a dark color scheme designed to use with terminals. This repository provides support for URxvt and XTerm; it also includes themes for some terminal applications (vim-airline, irssi, mutt, cmus, vifm) and Zsh. To use it in Vim/Neovim, check the repository [vim-atomic](https://github.com/gerardbm/vim-atomic).

![Atomic Space Screenshot](https://github.com/gerardbm/atomic/blob/master/img/screenshots/Atomic-Space-Screenshot_v2.png)

![Atomic Night Screenshot](https://github.com/gerardbm/atomic/blob/master/img/screenshots/Atomic-Night-Screenshot_v2.png)

![Atomic Light Screenshot](https://github.com/gerardbm/atomic/blob/master/img/screenshots/Atomic-Light-Screenshot_v2.png)

![Atomic Old Book Screenshot](https://github.com/gerardbm/atomic/blob/master/img/screenshots/Atomic-Old-Book-Screenshot_v1.png)

### Color palette

The color palette consists of **sixteen precision colors** selected procedurally through algorithms. Colors are distributed across six distinct hues and four levels of perceived lightness, based on the perceptually uniform color space **HSLuv** —an alternative to HSL designed to better reflect human perception of color differences.

Unlike traditional HSL, HSLuv ensures that **equal lightness values correspond more closely to equal perceived brightess**. Human nvision doesn't perceive brightess linearly: for example, a pure green color (`#00FF00`) appears brighter than pure red (`#FF0000`), despite having the same nominal lightness in HSL. To address this, the palette uses HSLuv to balance the perceived lightness consistently, with dark colors using 65% lightness and bright colors using 75%.

Regarding hue selection: although there are six main hues, they are **not spaced evenly by degrees (e.g., every 60°)**. This is because **human perception is not uniform around the hue wheel**: for example, some colors, like blue and cyan, require greater angular separation to be distinguishable, while reds and oranges can be closer. To ensure perceptual distinctness between hues, their separation has been validated using the **CIEDE2000 Delta E (ΔE00)** formula, a standard metric for color difference in the CIE LAB color space.

**Space Mode**: base colors use the blue color (hue 251°).

![Atomic-scheme](https://github.com/gerardbm/Atomic/blob/master/img/atomic-space-mc.png)

**Onion Mode**: base colors use the purple color (hue 293°).

This is an alternative mode with purple color.

![Atomic-scheme](https://github.com/gerardbm/Atomic/blob/master/img/atomic-onion-mc.png)

**Blood Mode**: base colors use the red color (hue 10°).

This is an alternative mode with red color.

![Atomic-scheme](https://github.com/gerardbm/Atomic/blob/master/img/atomic-blood-mc.png)

**Night Mode**: base colors use the orange color (hue 45°).

This is an alternative mode with orange color.

![Atomic-scheme](https://github.com/gerardbm/Atomic/blob/master/img/atomic-night-mc.png)

**Grass Mode**: base colors use the green color (hue 110°).

This is an alternative mode with green color.

![Atomic-scheme](https://github.com/gerardbm/Atomic/blob/master/img/atomic-grass-mc.png)

**Ocean Mode**: base colors use the cyan color (hue 182°).

This is an alternative mode with cyan color.

![Atomic-scheme](https://github.com/gerardbm/Atomic/blob/master/img/atomic-ocean-mc.png)

**Light Mode**: base colors use the orange color (hue 45°).

Light mode is useful when the screen receives a high illumination or we have to code in a bright environment. Our eyes will not have to adapt the light sensibility every time we look at the screen.

![Atomic-scheme](https://github.com/gerardbm/Atomic/blob/master/img/atomic-light-mc.png)

**Old Book Mode**: base colors use the orange color (hue 45°) with more saturation.

This bright mode is an alternative emulating the look of old books paper. It features an increased contrast.

![Atomic-scheme](https://github.com/gerardbm/Atomic/blob/master/img/atomic-old-book.png)

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

## Old atomic color scheme

Check the [old-atomic](https://github.com/gerardbm/old-atomic) repository for old colors (selected using different algorithms).
