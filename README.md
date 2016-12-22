# Atomic
### Multiple colors for multiple applications

Atomic is a dark color scheme designed to use with terminal, Vim/Neovim and several GUI code editors. This repository also includes themes for some terminal applications (tmux, irssi, cmus...) and Zsh.

### Color palette

The color palette consists of sixteen precision colors selected procedurally (algorithms), distributed in six hues and four balanced Luma (Y'). Note that Luma (Y') is the perceived brightness; don't confuse it with the lightness of the HSL color model.

Human vision doesn't detect brightness linearly with color: in a pixel (R'G'B'), we see red color (255, 0, 0) brighter than blue color (0, 0, 255), and green color (0, 255, 0) brighter than red color (255, 0, 0). So, in order to balance the color contrast, the perceived brightness has been corrected according to the ITU-R Recommendation BT.601:

`Luma (Y') = 0.299 R' + 0.587 G' + 0.114 B'`

This algorithm is also [suggested by W3C](https://www.w3.org/TR/AERT#color-contrast), however it's still open to change.

In a RGB color wheel, hues have been selected in order to be distinguishable for the human eye and keeping harmony: two analogous colors (0º and 30º), their complementary (180º and 210º) and tetrad (90º and 270º).

![Atomic-scheme](https://github.com/gerardbm/Atomic/blob/master/img/main-colors-dark.png)

**Night mode**

In the previous palette, hue of **base colors** (1, 8, 9 and 16) is 210º, so colors have more blue and green than red. During the day, these colors don't carry any problem, but at night blue light negatively affects health and sleep patterns: it affects levels of the sleep-inducing hormone melatonin more than any other wavelength.

In the following color palette, hue of base colors is 30º instead of 210º (actually, it's the complementary hue). That means values of blue and green colors have been reduced inversely, while value of red color has been increased in the same proportion.

![Atomic-scheme](https://github.com/gerardbm/Atomic/blob/master/img/main-colors-night.png)

### Code editors and IDEs

Dark mode (hue 210º):

- [x] Terminal (konsole, xfce4-terminal, gnome-terminal and URxvt)
- [x] Vim & Neovim
- [x] NetBeans IDE
- [x] [Sublime Text](https://github.com/gerardbm/sublime-atomic-scheme)

Night mode (hue 30º):

- [x] Terminal (konsole, xfce4-terminal, gnome-terminal and URxvt)
- [x] Vim & Neovim (only for terminal)
- [x] [Sublime Text](https://github.com/gerardbm/sublime-atomic-scheme)

### Themes

- [x] Cmus
- [x] Irssi
- [x] Tmux
- [x] Vim-airline
- [x] Zsh

## Installation

### Terminal

Installation for **konsole**:

1. Copy the file `Atomic.colorscheme` to `~/.kde/share/apps/konsole/` directory (or `~/.local/share/konsole/` directory if your KDE version is 5 or higher).
2. Open your terminal: `Settings` > `Edit Current Profile` > `Appearance` and choose «Atomic».

Installation for **gnome-terminal**:

1. Download the script `install-atomic.sh`.
2. Assign it execution permissions: `chmod +x install-atomic.sh`.
3. Open your terminal and execute the script: `./install-atomic.sh`.

Installation for **xfce4-terminal**:

1. Copy the file `terminalrc` to your `~/.config/xfce4/terminal/` directory or paste its content into it if you already have this file.

Installation for **URxvt**:

1. Copy the content of the file `Xresources.dark` or `Xresources.night` to your `.Xresources` file.
2. Load the resource file with the command: `xrdb ~/.Xresources`.

You will find more information on the .Xresources file in the [Arch Linux wiki](https://wiki.archlinux.org/index.php/X_resources).

### NetBeans

Installation in NetBeans:

1. Download the Atomic repository, unpack the downloaded file (`atomic-master.zip`) and then manually create a new zip file containing the folder `config`. In bash:
```bash
zip -r atomic.zip config
```
2. Open your NetBeans: `Tools` > `Options` > `Import...` > `Browse...`. Navigate to the zip file you created in the previous step. Make sure the option `Fonts & Colors` is checked and press `Ok` button.
3. Restart your NetBeans.
4. To switch between color schemes, in the `Options` panel go to the `Fonts & Colors` tab and choose a profile (in our case, 'Atomic').

**Known Issues**

If you are [still] using Windows XP, do not use the archive program built-in to create the zip file (step 1). It does not support file paths longer than a certain length. Use a third party archiver like 7zip, which is free.

### Sublime Text

Atomic scheme color for Sublime Text has its own repository, so it allows the installation through Package Control.

1. Make sure you already have Package Control installed.
2. Choose `Install Package` from the Command Palette (`Ctrl+Shift+P` on Windows/Linux, `⇧⌘P` on OS X).
3. Select Atomic in the menu: `Preferences` > `Atomic` > `Atomic`.

More info at: [https://github.com/gerardbm/Sublime-Atomic-Scheme](https://github.com/gerardbm/Sublime-Atomic-Scheme)

With `auto_upgrade` enabled, Package Control will keep all installed packages up-to-date!

- - -

### Zsh

Atomic Zsh theme has been designed to show useful information (username, hostname and pwd) without taking the entire line. If a directory is under Git control, in the second line it shows the current branch and status. Top separator helps to visually separate every task and shows the current time.

Installation in Zsh:

1. Copy the file `atomic.zsh-theme` to `~/.oh-my-zsh/themes/` directory.
2. Change the theme name to `ZSH_THEME="atomic"` in the file `~/.zshrc`.
3. Reload Zsh with `source ~/.zshrc`.

### Tmux

This config file has two sections: key bindings and status bar design. Most of the key bindings have double navigation, using arrow keys and using Vim keys (hjkl). It fits perfectly in a workflow with vim. Status displays system information (hostname, session, time and date), very useful for working in fullscreen mode.

Installation in Tmux:

1. The file `.tmux.conf` has two sections: the theme and the scheme color.
2. Copy the sections you are interested in and paste them to your `~/.tmux.conf` file.
3. Reload the new config using the command `Ctrl+a r`.
4. Make sure you have the Powerline fonts installed. (Status bar uses the Powerline look).

### Vim-airline

It's a vim-airline theme using Atomic colors and it's vailable for Terminal and Gvim.

Installation in Vim:

1. Install the plugin [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes) in your Vim.
2. Copy the file `atomic.vim` to your 'vim-airline-themes' directory: `../vim-airline-themes/autoload/airline/themes/`.
3. Add the following settings to your `.vimrc`.
4. And finally type: `:AirlineTheme atomic`.
```viml
" Use 'atomic' by default
let g:airline_theme='atomic'
" Enable it if you use the Powerline fonts
let g:airline_powerline_fonts = 1
" Enable a tabs line at the top
let g:airline#extensions#tabline#enabled = 1
" It disables bold text, so it looks like tmux status bar
call airline#parts#define_accent('mode', 'black')
```
Also, make sure you have the Powerline fonts installed, like in Tmux.

### Cmus

Simply, it's a theme using Atomic colors. Cmus themes don't allow other configurations.

Installation in cmus:

1. Download the Atomic repository, unpack the downloaded file and manually place `atomic.theme` file into `~/.cmus/`.
2. Open your cmus and type: `:colorscheme atomic`. Enjoy!

### Irssi

This theme has been created to make the reading easier and more intuitive.

Installation in irssi:

1. Download the Atomic repository, unpack the downloaded file and manually place `atomic.theme` file into `~/.irssi/`.
2. Open your irssi and type: `/set theme atomic`. You can save changes with `/save`.

- - -

## Font family

The default font family is **DejaVu Sans Mono** from the [DejaVu](http://dejavu-fonts.org) fonts family (under a [Free license](http://dejavu-fonts.org/wiki/License)). Anyway, Atomic is designed to look good with any kind of typography, as colors are distinguishable to any thickness.

Some themes (tmux and vim-airline) require the installation of Powerline fonts.
URL: https://github.com/powerline/fonts

- - -

## The values

**Dark mode values**

```
ID  ATOMIC COLORS   LUMA    HUE    HEX    (R - G - B)   (H -- S -- L)
--  -------------  ------  ----  -------  -----------  ----------------
 1  Base 01          10%   210º  #141A1F   20  26  31  210º  21%  10.0% |
 9  Base 02          15%   210º  #202931   32  41  49  210º  21%  16.0% | Base
 8  Base 03          40%   210º  #53697F   83 105 127  210º  21%  41.0% | Colors
16  Base 04          70%   210º  #A6B5C5  166 181 197  210º  21%  71.0% |
--  -------------  ------  ----  -------  -----------  ----------------
 2  Dark Red         50%     0º  #EC5252  236  82  82    0º  80%  62.3% |
 4  Dark Orange      50%    30º  #C97016  201 112  22   30º  80%  43.8% |
 3  Dark Green       50%    90º  #5DA813   93 168  19   90º  80%  36.5% | Dark
 7  Dark Cyan        50%   180º  #13AEAE   19 174 174  180º  80%  38.0% | Accent
 5  Dark Blue        50%   210º  #3790E9   55 144 233  210º  80%  56.5% |
 6  Dark Violet      50%   270º  #A35AED  163  90 237  270º  80%  64.0% |
--  -------------  ------  ----  -------  -----------  ----------------
10  Light Red        70%     0º  #FF9191  255 145 145    0º 100%  78.5% |
12  Light Orange     70%    30º  #EDA45C  237 164  92   30º  80%  64.5% |
11  Light Green      70%    90º  #9ACD68  154 205 104   90º  50%  60.5% | Light
15  Light Cyan       70%   180º  #6ECFCF  110 207 207  180º  50%  62.0% | Accent
13  Light Blue       70%   210º  #7DBEFF  125 190 255  210º 100%  74.6% |
14  Light Violet     70%   270º  #CA96FF  202 150 255  270º 100%  79.4% |
```

**Night mode values**
```
ID  ATOMIC COLORS   LUMA    HUE    HEX    (R - G - B)   (H -- S -- L)
--  -------------  ------  ----  -------  -----------  ----------------
 1  Base 01          10%    30º  #1E1813   30  24  19   30º  21%   9.6% |
 9  Base 02          15%    30º  #2E261E   46  38  30   30º  21%  15.0% | Base
 8  Base 03          40%    30º  #76614D  118  97  77   30º  21%  38.2% | Colors
16  Base 04          70%    30º  #C0AF9F  192 175 159   30º  21%  68.8% |
```
