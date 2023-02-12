# Installation for code editors

## Vim and Neovim

Installation in Vim and Neovim:

Atomic color scheme for Vim and Neovim has its own repository ([vim-atomic](https://github.com/gerardbm/vim-atomic)), so it allows the installation through a plugins manager (vim-plug, pathogen, vundle, neobundle).

Using vim-plug:

```viml
Plug 'gerardbm/vim-atomic'
```

Or...

Manually copy the file `atomic.vim` contained into the `vim` directory of this repository and paste it into `~/.vim/colors/` (Vim) or `~/.config/nvim/colors/` (Neovim).

1. Set the colorscheme in your Vim/Neovim configuration file: `colorscheme atomic`.
2. If you are in a GUI for Vim (as gvim), you have commands to switch between modes:
- (1) `AtomicSpaceHC`: sets the space mode (blue hue, dark background) in hard contrast (+4%).
- (2) `AtomicSpaceMC`: sets the space mode (blue hue, dark background) in medium contrast (default).
- (3) `AtomicSpaceLC`: sets the space mode (blue hue, dark background) in hard contrast (-4%).
- (4) `AtomicNightHC`: sets the night mode (orange hue, dark background) in hard contrast (+4%).
- (5) `AtomicNightMC`: sets the night mode (orange hue, dark background) in medium contrast (default).
- (6) `AtomicNightLC`: sets the night mode (orange hue, dark background) in hard contrast (-4%).
- (7) `AtomicLightHC`: sets the light mode (orange hue, light background) in hard contrast (+4%).
- (8) `AtomicLightMC`: sets the light mode (orange hue, light background) in medium contrast (default).
- (9) `AtomicLightLC`: sets the light mode (orange hue, light background) in hard contrast (-4%).

Or switch them depending on the current time. In your `.gvimrc`:

```viml
function! AtomicSwitcher()
	if (strftime('%H') > 8) && (strftime('%H') < 20)
		AtomicSpaceHC
	else
		AtomicNightHC
	endif
endfunction
```

Even cycle them (from 1 to 9) with a shortcut. Paste this in your `.gvimrc`:

```viml
nnoremap <F9> :call CycleModes()<CR>:colorscheme atomic<CR>
```

### Vim-airline

Installation in Vim-airline:

1. Make sure you already have the plugin [vim-airline](https://github.com/vim-airline/vim-airline).
2. Install the plugin [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes).
3. Type this `:AirlineTheme atomic` to use the atomic theme in the current session.
4. Add the following settings to your `.vimrc`.

```viml
let g:airline_theme='atomic'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
call airline#parts#define_accent('mode', 'black')
```

For better contrast, install the plugin [vim-atomic](https://github.com/gerardbm/vim-atomic) and set by default the atomic colorscheme. If it's not installed, it will use the colors of your current colorscheme. If it's installed, vim-airline-atomic will be adapted to the current atomic mode (`Space`, `Night`, `Light`) automatically.

Make sure you have the Powerline fonts installed.
