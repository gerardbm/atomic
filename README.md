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

In a RGB color wheel, hues have been selected in order to be distinguishable for the human eye and keeping harmony: that means one color every 60°.

**Space Mode**: base colors use the blue color (hue 240°).

![Atomic-scheme](https://github.com/gerardbm/Atomic/blob/master/img/atomic-space-mc.png)

In this palette, the base colors have more blue and green than red. During the day, these colors don't carry any problem, but at night blue light negatively affects health and sleep patterns: it affects levels of the sleep-inducing hormone melatonin more than any other wavelength.

**Night Mode**: base colors use the orange color (hue 60°).

Night mode uses a different hue of base color: 60° (orange) instead of 240° (blue). Actually, they are complementary colors. That means values of blue and green colors have been reduced inversely, while value of red color has been increased in the same proportion.

![Atomic-scheme](https://github.com/gerardbm/Atomic/blob/master/img/atomic-night-mc.png)

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

## The values

Space Mode

```
Id Color            Hue   Sat   Luv    Hex    (R - G - B)
-- --------------  ----  ----  ----  -------  -----------
01 Base 1          240°   30%    7%  #11161B   17  22  27
09 Base 2          240°   30%   10%  #171C22   23  28  34
08 Base 3          240°   30%   50%  #67798B  103 121 139
16 Base 4          240°   30%   68%  #91A8C1  145 168 193
-- --------------  ----  ----  ----  -------  -----------
02 Dark Red          0°  100%   65%  #FF6C91  255 108 145
04 Dark Orange      60°  100%   65%  #C59700  197 151   0
03 Dark Green      120°  100%   65%  #55B300   85 179   0
07 Dark Cyan       180°  100%   65%  #00B1A4    0 177 164
05 Dark Blue       240°  100%   65%  #00A7F0    0 167 240
06 Dark Violet     300°  100%   65%  #EA65FF  234 101 255
-- --------------  ----  ----  ----  -------  -----------
10 Light Red         0°   65%   68%  #E58C9F  229 140 159
12 Light Orange     60°   65%   68%  #C3A161  195 161  97
11 Light Green     120°   65%   68%  #78B560  120 181  96
15 Light Cyan      180°   65%   68%  #66B3AA  102 179 170
13 Light Blue      240°   65%   68%  #6CACDF  108 172 223
14 Light Violet    300°   65%   68%  #D38CE0  211 140 224
```

Night Mode

```
Id Color            Hue   Sat   Luv    Hex    (R - G - B)
-- --------------  ----  ----  ----  -------  -----------
01 Base 1           60°   30%    7%  #181510   24  21  16
09 Base 2           60°   30%   10%  #1F1B15   31  27  21
08 Base 3           60°   30%   50%  #827562  130 117  98
16 Base 4           60°   30%   68%  #B5A38A  181 163 138
-- --------------  ----  ----  ----  -------  -----------
02 Dark Red          0°  100%   65%  #FF6C91  255 108 145
04 Dark Orange      60°  100%   65%  #C59700  197 151   0
03 Dark Green      120°  100%   65%  #55B300   85 179   0
07 Dark Cyan       180°  100%   65%  #00B1A4    0 177 164
05 Dark Blue       240°  100%   65%  #00A7F0    0 167 240
06 Dark Violet     300°  100%   65%  #EA65FF  234 101 255
-- --------------  ----  ----  ----  -------  -----------
10 Light Red         0°   65%   68%  #E58C9F  229 140 159
12 Light Orange     60°   65%   68%  #C3A161  195 161  97
11 Light Green     120°   65%   68%  #78B560  120 181  96
15 Light Cyan      180°   65%   68%  #66B3AA  102 179 170
13 Light Blue      240°   65%   68%  #6CACDF  108 172 223
14 Light Violet    300°   65%   68%  #D38CE0  211 140 224
```

Light Mode

```
Id Color            Hue   Sat   Luv    Hex    (R - G - B)
-- --------------  ----  ----  ----  -------  -----------
01 Base 1           60°   55%   93%  #F6E9D7  246 233 215
09 Base 2           60°   45%   90%  #F0E0CA  240 224 202
08 Base 3           60°   35%   30%  #4F4537   79  69  55
16 Base 4           60°   35%   50%  #84755E  132 117  94
-- --------------  ----  ----  ----  -------  -----------
02 Dark Red          0°  100%   40%  #BC004F  188   0  79
04 Dark Orange      60°  100%   40%  #775A00  119  90   0
03 Dark Green      120°  100%   40%  #306B00   48 107   0
07 Dark Cyan       180°  100%   40%  #006A62    0 106  98
05 Dark Blue       240°  100%   40%  #006492    0 100 146
06 Dark Violet     300°  100%   40%  #A400B6  164   0 182
-- --------------  ----  ----  ----  -------  -----------
10 Light Red         0°  100%   50%  #EA0064  234   0 100
12 Light Orange     60°  100%   50%  #957200  149 114   0
11 Light Green     120°  100%   50%  #3F8700   63 135   0
15 Light Cyan      180°  100%   50%  #00867C    0 134 124
13 Light Blue      240°  100%   50%  #007EB7    0 126 183
14 Light Violet    300°  100%   50%  #CD00E2  205   0 226
```

## Old atomic color scheme

Check the [old-atomic](https://github.com/gerardbm/old-atomic) repository for old colors (selected using different algorithms).
