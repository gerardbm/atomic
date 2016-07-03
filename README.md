# Atomic
### Multiple colors for multiple applications

Atomic is a dark color scheme designed to use with terminal, Zsh and several GUI applications (code editors).

### Color palette

The color palette consists of sixteen precision colors selected procedurally (algorithms), distributed in six hues and four balanced luma. Luma is the perceived brightness, not the lightness of the HSL model.

Human eyes don't detect brightness linearly with color —we see red color brighter than blue color, and green color brighter than red color—, so the luma has been balanced following the ITU-R Recommendation BT.601:

`Y' = 0.299 R' + 0.587 G' + 0.114 B'`

In a RGB color wheel, hue angles have been calculated in order to be distinguishable for the human eye and keeping harmony: two analogous colors (0º and 30º), their complementary (180º and 210º) and tetrad (90º and 270º).

![Atomic-scheme](https://github.com/gerardbm/Atomic/blob/master/img/atomic-scheme.png)

```
ATOMIC COLORS   LUMA    HUE    HEX    (R - G - B)   (H -- S -- L)
-------------  ------  ----  -------  -----------  ----------------
Background       10%   210º  #141A1F   20  26  31  210º  21%  10.0%
Comments         30%   210º  #3E4F60   62  79  96  210º  21%  31.0%
Dark Grey        50%   210º  #6B859E  107 133 158  210º  21%  52.0%
Dark Blue        50%   210º  #3790E9   55 144 233  210º  80%  56.5%
Dark Violet      50%   270º  #A35AED  163  90 237  270º  80%  64.0%
Dark Red         50%     0º  #EC5252  236  82  82    0º  80%  62.3%
Dark Orange      50%    30º  #C97016  201 112  22   30º  80%  43.8%
Dark Green       50%    90º  #5DA813   93 168  19   90º  80%  36.5%
Dark Cyan        50%   180º  #13AEAE   19 174 174  180º  80%  38.0%
Light Grey       70%     0º  #A6B5C5  166 181 197  210º  21%  71.0%
Light Blue       70%   210º  #7DBEFF  125 190 255  210º 100%  74.6%
Light Violet     70%   270º  #CA96FF  202 150 255  270º 100%  79.4%
Light Red        70%   330º  #FF9191  255 145 145    0º 100%  78.5%
Light Orange     70%    30º  #EDA45C  237 164  92   30º  80%  64.5%
Light Green      70%    90º  #9ACD68  154 205 104   90º  50%  60.5%
Light Cyan       70%   180º  #6ECFCF  110 207 207  180º  50%  62.0%
```

![Screenshot 01](https://raw.githubusercontent.com/gerardbm/Atomic/master/img/screenshot-st3-css.png)
![Screenshot 02](https://raw.githubusercontent.com/gerardbm/Atomic/master/img/screenshot-st3-php.png)

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

**Known Issues**

If you are [still] using Windows XP, do not use the archive program built-in to create the zip file (step 1). It does not support file paths longer than a certain length. Use a third party archiver like 7zip, which is free.

### Sublime Text 3

Installation in Sublime Text 3:

1. Download the Atomic repository, unpack the downloaded file and manually place `Atomic.tmTheme` file into `~/.config/sublime-text-3/Packages/Atomic/`.
2. Open your Sublime Text 3: `Preferences` > `Color Scheme` > `Atomic` > `Atomic`. Select it.

### Cmus

Installation in cmus:

1. Download the Atomic repository, unpack the downloaded file and manually place `atomic.theme` file into `~/.cmus/`.
2. Open your cmus and type: `:colorscheme atomic`. Enjoy!

### Irssi

Installation in irssi:

1. Download the Atomic repository, unpack the downloaded file and manually place `atomic.theme` file into `~/.irssi/`.
2. Open your irssi and type: `/set theme atomic`. You can save changes with `/save`.

### Tmux

Installation in Tmux:

1. The file `.tmux.conf` has two sections: the theme and the scheme color.
2. Copy the sections you are interested in and paste them to your `~/.tmux.conf` file.
3. If you pasted the theme settings you can reload the new config with the command: `Ctrl+a && r`.

### Font family

The default font is DejaVu Sans Mono from the [DejaVu](http://dejavu-fonts.org) fonts family (under a [Free license](http://dejavu-fonts.org/wiki/License)). Anyway, Atomic is designed to look good with any kind of typography, as colors are distinguishable to any thickness.
