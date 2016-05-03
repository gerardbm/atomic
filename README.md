# Atomic
### Multiple colors for multiple applications

Atomic is a dark color scheme designed to use with terminal, Zsh and several GUI applications (code editors).

### Color palette

The color palette consists of sixteen precision colors selected procedurally (algorithms), distributed in seven hues and four balanced luminances. Luminance is the perceived brightness, not the lightness of the HSL model.

Human eyes don't detect brightness linearly with color —we see red brighter than blue, and green brighter than red—, so the luminance has been balanced following the ITU-R Recommendation BT.601:

`Y' = 0.299 R' + 0.587 G' + 0.114 B'`

In a RGB color wheel, hue angles have been calculated in order to be distinguishable for the human eye and keeping harmony: analogous colors have an angular separation of 30º , tetrad 90º, triad 120º and complementary 180º. 

![Atomic-scheme](https://github.com/gerardbm/Atomic/blob/master/img/atomic-scheme.png)

```
ATOMIC COLORS   LUMA    HUE     HEX     (R  G  B)    (H  S  V)
-------------  ------  -----  -------  --- --- ---  --- --- ---
Background       10%   210º   #15191D   21  25  29  210  28  11
Auxiliary        30%   210º   #454F59   69  79  89  210  22  35
Dark Blue        50%   210º   #3791EB   55 145 235  210  77  92
Dark Violet      50%   270º   #9C60D8  156  96 216  270  56  85
Dark Magenta     50%   330º   #F04299  240  66 153  330  33  94
Dark Red         50%     0º   #F05050  240  80  80    0  67  94
Dark Orange      50%    30º   #D76C00  215 108   0   30 100  84
Dark Green       50%    90º   #659F2B  101 159  43   90  73  62
Dark Cyan        50%   180º   #469999   70 153 153  180  54  60
Light Blue       70%   210º   #7DBEFF  125 190 255  210  51 100
Light Violet     70%   270º   #C997FA  201 151 250  270  40  98
Light Magenta    70%   330º   #F28EC0  242 142 192  330  41  95
Light Orange     70%    30º   #F0A458  240 164  88   30  63  94
Light Green      70%    90º   #98D15F  152 209  95   90  55  82
Light Cyan       70%   180º   #7DC8C8  125 200 200  180  38  78
Light Grey       70%     0º   #B2B2B2  178 178 178    0   0  70
```

![Screenshot](https://raw.githubusercontent.com/gerardbm/Atomic/master/img/screenshot-st3.png)

### Zsh theme

Atomic Zsh theme has been designed to show useful information (username, hostname, pwd and current time) without taking the entire line. If a directory is under Git control, in the second line it shows the current branch and status. The top separator helps to visually separate every task.

![Atomic-zsh](https://github.com/gerardbm/Atomic/blob/master/img/prompt-zsh.png)

### Editors and IDEs

- Terminal
- NetBeans IDE
- Sublime Text 3

# Installation
### Terminal

Installation in KDE:

1. Copy the file `Atomic.colorscheme` to `~/.kde/share/apps/konsole/` directory (or `~/.local/share/konsole/` directory if your KDE version is 5 or higher).
2. Open your terminal: `Settings` > `Edit Current Profile` > `Appearance` and choose «Atomic».

### Zsh theme

How to install the Zsh theme atomic.zsh-theme

1. Copy the file `honukai.zsh-theme` to `~/.oh-my-zsh/themes/` directory.
2. Change the theme name to `ZSH_THEME="atomic"` in the file `~/.zshrc`.
3. Reload Zsh with `source ~/.zshrc`.

### NetBeans

Installation in NetBeans IDE:

1. Download the Atomic repository, unpack the downloaded file (`atomic-master.zip`) and then manually create a new zip file containing the folder `config`. In bash:
```bash
zip -r atomic.zip config
```
2. Open your NetBeans: `Tools` > `Options` > `Import...` > `Browse...`. Navigate to the zip file you created in the previous step. Make sure the option `Fonts & Colors` is checked and press `Ok` button.
3. Restart your NetBeans.
4. To switch between color schemes, in the `Options` panel go to the `Fonts & Colors` tab and choose a profile (in our case, 'Atomic').

### Sublime Text 3

Installation in Sublime Text 3:

1. Download the Atomic repository, unpack the downloaded file and manually place `Atomic.tmTheme` file into `~/.config/sublime-text-3/Packages/User`.
2. Open your Sublime Text 3: `Preferences` > `Color Scheme` > `User` > `Atomic`. Select it.

**Known Issues** 

If you are using Windows XP, do not use the archive program built-in to create the zip file of the first step. It does not support file paths longer than a certain length. Use a third party archiver like 7zip, which is free.

### Font family

The default font is DejaVu Sans Mono from the [DejaVu](http://dejavu-fonts.org) fonts family (under a [Free license](http://dejavu-fonts.org/wiki/License)). Anyway, Atomic is designed to look good with any kind of typography, as colors are distinguishable to any thickness.
