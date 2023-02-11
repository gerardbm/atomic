# Atomic

Colors recalculated in 2023!

### Multiple colors for multiple applications

Atomic is a dark color scheme designed to use with terminal, Vim/Neovim and several GUI code editors. This repository also includes themes for some terminal applications (vim-airline, irssi, mutt, cmus, vifm) and Zsh.

### Color palette

The color palette consists of **sixteen precision colors** selected procedurally (algorithms), distributed in six hues and four perceived lightness, according to the color space **HSLuv** («_an alternative to HSL designed for perceptual uniformity based on human experiments_».

Don't confuse the perceived brightness with the lightness of the HSL color model. Human vision doesn't detect brightness linearly with color: in a pixel (R'G'B'), we see red color (#FF0000) darker than green color (#00FF00), and green color (#00FF00) brighter than red (#FF0000) and blue (#0000FF) colors.

So the perceived lightness has been balanced according to the ITU-R Recommendation BT.709:

`Luma (Y') = 0.2126 R' + 0.7152 G' + 0.0722 B'`

In a RGB color wheel, hues have been selected in order to be distinguishable for the human eye and keeping harmony: that means one color every 60°.

**Space Mode**: base colors use the blue color (hue 240°).

![Atomic-scheme](https://github.com/gerardbm/Atomic/blob/master/img/atomic-space-mc.png)

In this palette, the base colors have more blue and green than red. During the day, these colors don't carry any problem, but at night blue light negatively affects health and sleep patterns: it affects levels of the sleep-inducing hormone melatonin more than any other wavelength.

**Night Mode**: base colors use the orange color (hue 60°).

Night modes uses a different hue of base color: 60° (orange) instead of 240° (blue). Actually, they are complementary colors. That means values of blue and green colors have been reduced inversely, while value of red color has been increased in the same proportion.

![Atomic-scheme](https://github.com/gerardbm/Atomic/blob/master/img/atomic-night-mc.png)

**Light Mode**: base colors use the orange color (hue 60°).

Light mode is useful when the screen receives a high illumination or we have to code in a bright environment. Our eyes will not have to adapt the light sensibility every time we look at the screen.

![Atomic-scheme](https://github.com/gerardbm/Atomic/blob/master/img/atomic-light-mc.png)

### Code editors and IDEs

Due to the colors recalculation, this editors have to be adapted.

- [.] Terminal
	- [x] URxvt (`.Xresources`)
	- [x] XTerm (`.Xresources`)
	- [ ] xfce4-terminal
	- [ ] konsole
- [ ] [Vim and Neovim](https://github.com/gerardbm/vim-atomic)
	- [x] Vim-airline
- [ ] NetBeans IDE
- [ ] [Sublime Text](https://github.com/gerardbm/sublime-atomic-scheme)

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

1. Installation for [terminals](https://github.com/gerardbm/atomic/blob/master/INSTALL_TERM.md) (URxvt, XTerm, xfce4-terminal, konsole).
2. Installation for [code editors](https://github.com/gerardbm/atomic/blob/master/INSTALL_EDITORS.md) (Vim, Neovim, Sublime Text, NetBeans, vim-airline).
3. Installation for [command-line tools](https://github.com/gerardbm/atomic/blob/master/INSTALL_TOOLS.md) (cmus, irssi, mutt, vifm, zsh).

- - -

## Font family

Atomic is designed to look good with any kind of typography, as colors are distinguishable to any thickness.

Some themes (vim-airline, zsh) require the installation of Powerline fonts.
URL: https://github.com/powerline/fonts
