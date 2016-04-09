# Atomic
### Multiple colors for multiple applications

Atomic is a dark color scheme designed to use with terminal, Zsh and several GUI applications (code editors).

### Color palette

The color palette consists of sixteen precision colors choosed procedurally (algorithms), distributed in seven hues and five balanced luminances. Luminance is the perceived brightness, not the brightness/lightness of the HSL model.

In a RGB color wheel, hue angles have been calculated in order to be distinguishable for the human eye and keeping harmony: analogous colors have an angular separation of 30 degrees, tetrad 90 degrees, triad 120 degrees and complementary 180º degrees. 

Moreover, human eyes don't detect brightness linearly with color —we see red brighter than blue, and green brighter than red—, so the luminance ('perceived brightness' as mentioned previously) has been balanced following the ITU-R Recommendation BT.601: 
Y' = 0.299 R' + 0.587 G' + 0.114 B'

![Atomic-scheme](https://github.com/gerardbm/Atomic/blob/master/img/atomic-scheme.png)

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
