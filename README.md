# Atomic
### Multiple colors for multiple applications

Atomic is a dark color scheme designed to use with terminal, Zsh and several GUI applications (code editors).

### Color palette

The color palette consists of sixteen precision colors choosed procedurally (algorithms), distributed in seven hues and four balanced luminances. Luminance is the perceived brightness, not the lightness of the HSL model.

Human eyes don't detect brightness linearly with color —we see red brighter than blue, and green brighter than red—, so the luminance has been balanced following the ITU-R Recommendation BT.601:

`Y' = 0.299 R' + 0.587 G' + 0.114 B'`

In a RGB color wheel, hue angles have been calculated in order to be distinguishable for the human eye and keeping harmony: analogous colors have an angular separation of 30º , tetrad 90º, triad 120º and complementary 180º. 

![Atomic-scheme](https://github.com/gerardbm/Atomic/blob/master/img/atomic-scheme.png)

```
ATOMIC COLORS   LUMA    HUE     HEX     (R  G  B)    (H  S  V)
-------------  ------  -----  -------  --- --- ---  --- --- ---
Black            10%   210º   #15191D   21  25  29  210  70  29
Dark Grey        30%   210º   #454F59   69  79  89  210  57  89
Dark Blue        50%   210º   #3791EB   55 145 235  210 196 235
Dark Violet      50%   270º   #9C60D8  156  96 216  270 142 216
Dark Magenta     50%   330º   #F04299  240  66 153  330 185 240
Dark Red         50%     0º   #F05050  240  80  80    0 170 240
Dark Orange      50%    30º   #D76C00  215 108   0   30 255 215
Dark Green       50%    90º   #659F2B  101 159  43   90 186 159
Dark Cyan        50%   180º   #469999   70 153 153  180 138 153
Light Blue       70%   210º   #7DBEFF  125 190 255  210 130 255
Light Violet     70%   270º   #C997FA  201 151 250  270 101 250
Light Magenta    70%   330º   #F28EC0  242 142 192  330 105 242
Light Orange     70%    30º   #F0A458  240 164  88   30 162 240
Light Green      70%    90º   #98D15F  152 209  95   90 139 209
Light Cyan       70%   180º   #7DC8C8  125 200 200  180  96 200
Light Grey       70%   210º   #AAB4BE  170 180 190  210  26 190
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
