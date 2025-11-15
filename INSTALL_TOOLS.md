# Installation for command-line tools

There are two ways:

- Clone this repository in your `$HOME` and use `stow`.
- Copy manually the theme into the correct directory.

## Cmus

1. Copy the file `atomic.theme` to the cmus directory: `~/.config/cmus/`.
2. Open your cmus and type `:colorscheme atomic`.

## Irssi

1. Copy the file `atomic.theme` to the irssi directory: `~/.irssi/`.
2. Open your irssi and type: `/set theme atomic`.
3. You can save changes with the command `/save`.

## Mutt

1. Copy the file `atomic.muttrc` to the mutt directory: `~/.mutt`.
2. Source your `~/.muttrc` with `source $HOME/.mutt/atomic.muttrc`.

## Rofi

1. Copy the file `atomic.rasi` to this directory: `~/.config/rofi/themes/`.
2. Then, in your `config.rasi` insert this `@theme "atomic"`.

## Vifm

1. Copy the file `atomic.vifm` to this directory: `~/.config/vifm/colors/`.
2. Then, in your `vifmrc` insert this `colorscheme atomic`.

## Zsh

Installation in Zsh:

1. Copy the file `atomic.zsh-theme` to `~/.oh-my-zsh/themes/` directory.
2. Change the theme name to `ZSH_THEME="atomic"` in the file `~/.zshrc`.
3. Source your ZSH with `source ~/.zshrc`.
