# Installation for command-line tools

## Cmus

Installation in cmus:

1. Download the Atomic repository, unpack the downloaded file and manually place `atomic.theme` file into `~/.config/cmus/`.
2. Open your cmus and type: `:colorscheme atomic`.

## Irssi

Installation in irssi:

1. Download the Atomic repository, unpack the downloaded file and manually place `atomic.theme` file into `~/.irssi/`.
2. Open your irssi and type: `/set theme atomic`. You can save changes with the command `/save`.

## Mutt

Installation in mutt:

1. Download the Atomic repository, unpack it and place `atomic.muttrc` to your `~/.mutt` directory.
2. Then source this file from your `~/.muttrc`. For example:

`
source $HOME/.mutt/atomic.muttrc
`

## Zsh

Installation in Zsh:

1. Copy the file `atomic.zsh-theme` to `~/.oh-my-zsh/themes/` directory.
2. Change the theme name to `ZSH_THEME="atomic"` in the file `~/.zshrc`.
3. Reload Zsh with `source ~/.zshrc`.
