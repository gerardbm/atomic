# Installation for code editors

## Vim and Neovim

Installation in Vim and Neovim:

Atomic colorscheme for Vim and Neovim has its own repository, so it allows the installation through a plugins manager (vim-plug, pathogen, vundle, neobundle).

Using vim-plug:

```viml
Plug 'gerardbm/vim-atomic'
```

Or...

Manually copy the file `atomic.vim` contained into the `vim` directory of this repository and paste it into `~/.vim/colors/` (Vim) or `~/.config/nvim/colors/` (Neovim).

1. Set the colorscheme in your Vim/Neovim configuration file: `colorscheme atomic`.
2. If you are in a GUI for Vim (as gvim), you have commands to switch between modes:
	- (1) `AtomicDarkBlueSoft`: sets the dark blue mode (default).
	- (2) `AtomicDarkBlueHard`: extra, +5% contrast.
	- (3) `AtomicDarkCyanSoft`: sets the dark cyan mode.
	- (4) `AtomicDarkCyanHard`: extra, +5% contrast.
	- (5) `AtomicNightOrangeSoft`: sets the night orange mode.
	- (6) `AtomicNightOrangeHard`: extra, +5% contrast.
	- (7) `AtomicNightRedSoft`: sets the night red mode.
	- (8) `AtomicNightRedHard`: extra, +5% contrast.
	- (9) `AtomicLightSoft`: sets the light mode.
	- (10) `AtomicLightHard`: extra, +5% contrast.

Or switch them depending on the current time. In your `.gvimrc`:

```viml
function! AtomicSwitcher()
	if (strftime("%H") > 8) && (strftime("%H") < 20)
		AtomicLightSoft
	else
		AtomicNightRedHard
	endif
endfunction
```

Even cycle them (from 1 to 10) with a shortcut. Paste this in your `.gvimrc`:

```viml
nnoremap <F9> :call CycleModes()<CR>:colorscheme atomic<CR>
vnoremap <F9> :<C-u>call CycleModes()<CR>:colorscheme atomic<CR>gv
```

### Vim-airline

Installation in Vim-airline:

1. Make sure you already have the plugin [vim-airline](https://github.com/vim-airline/vim-airline).
2. Install the plugin [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes).
3. Type this `:AirlineTheme atomic` to use the atomic theme in the current session.
4. Add the following settings to your `.vimrc`.

```viml
" Use 'atomic' by default
let g:airline_theme='atomic'
" Enable it if you use the Powerline fonts
let g:airline_powerline_fonts = 1
" Enable the tabline at the top
let g:airline#extensions#tabline#enabled = 1
" It disables the bold text in vim modes
call airline#parts#define_accent('mode', 'black')
```

For better contrast, install the plugin [vim-atomic](https://github.com/gerardbm/vim-atomic) and set by default the atomic colorscheme. If it's not installed, it will use the colors of your current colorscheme. If it's installed, vim-airline-atomic will be adapted to the current atomic mode (Dark, Night, Light) automatically.

Make sure you have the Powerline fonts installed.

## Sublime Text

Atomic colorscheme for Sublime Text has its own repository, so it allows the installation through Package Control.

1. Make sure you already have Package Control installed.
2. Choose `Install Package` from the Command Palette (`Ctrl+Shift+P` on Windows/Linux, `⇧⌘P` on OS X).
3. Select Atomic in the menu: `Preferences` > `Atomic` > `Atomic`.

More info at: [https://github.com/gerardbm/Sublime-Atomic-Scheme](https://github.com/gerardbm/Sublime-Atomic-Scheme)

With `auto_upgrade` enabled, Package Control will keep all installed packages up-to-date!

## NetBeans

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
