# Atomic
### Multiple colors for multiple applications

Atomic is a dark color scheme designed to use with terminal, Zsh and several GUI applications (code editors).

### Color palette

The color palette consists of sixteen precision colors choosed procedurally (algorithms), distributed in seven hues and five balanced luminances. Luminance is the perceived brightness, not the brightness/lightness of the HSL model.

Human eyes don't detect brightness linearly with color —we see red brighter than blue, and green brighter than red—, so the luminance has been balanced following the ITU-R Recommendation BT.601:

`Y' = 0.299 R' + 0.587 G' + 0.114 B'`

In a RGB color wheel, hue angles have been calculated in order to be distinguishable for the human eye and keeping harmony: analogous colors have an angular separation of 30º , tetrad 90º, triad 120º and complementary 180º. 

![Atomic-scheme](https://github.com/gerardbm/Atomic/blob/master/img/atomic-scheme.png)

##### Color values

```
ATOMIC COLORS   LUMA    HUE     HEX     (R  G  B)    (H  S  L)
-------------  ------  -----  -------  --- --- ---  --- --- ---
Black            10%   150º   #121C26   18  28  38
Dark Grey        30%   150º   #454F59   69  79  89
Dark Blue        50%   150º   #3791EB   55 145 235
Dark Violet      50%   270º   #9C60D8  156  96 216
Dark Magenta     50%   330º   #F04299  240  66 153
Dark Red         50%     0º   #F05050  240  80  80
Dark Orange      50%    30º   #D76C00  215 108   0
Dark Green       50%    90º   #659F2B  101 159  43
Dark Cyan        50%   180º   #469999   70 153 153
Light Blue       70%   150º   #7DBEFF  125 190 255
Light Violet     70%   270º   #C997FA  201 151 250
Light Magenta    70%   330º   #F28EC0  242 142 192
Light Orange     70%    30º   #F0A458  240 164  88
Light Green      70%    90º   #98D15F  152 209  95
Light Cyan       70%   180º   #7DC8C8  125 200 200
Light Grey       70%   150º   #AAB4BE  170 180 190
```

### Zsh theme

Atomic Zsh theme has been designed to show useful information (username, hostname, pwd and current time) without taking the entire line. If a directory is under Git control, in the second line it shows the current branch and status. The top separator helps to visually separate every task.

![Atomic-zsh](https://github.com/gerardbm/Atomic/blob/master/img/prompt-zsh.png)

### Editors and IDEs

- Terminal
- Vim (Coming soon)
- Sublime Text (Coming soon)
- NetBeans (Coming soon)

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
