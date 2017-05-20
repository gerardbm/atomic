"----------------------------------------------------------------
"      ___   __                  _
"     /   | / /_____  ____ ___  (_)____
"    / /| |/ __/ __ \/ __ `__ \/ / ___/
"   / ___ / /_/ /_/ / / / / / / / /__
"  /_/  |_\__/\____/_/ /_/ /_/_/\___/
"
"----------------------------------------------------------------
"  Theme   : Atomic
"  Version : 3.0.0
"  License : MIT
"  Author  : Gerard Bajona
"  URL     : https://github.com/gerardbm/atomic
"----------------------------------------------------------------

" Colorscheme init
"----------------------------------------------------------------
set background=dark

highlight clear

if exists('syntax_on')
	syntax reset
endif

" Color definitions and settings
"----------------------------------------------------------------
let g:colors_name = 'atomic'

if !has('gui_running')
	let s:envir = 'cterm'

	if &t_Co == 8
		let s:base1 = 0
		let s:base2 = 0
		let s:base3 = 7
		let s:base4 = 7
		" ---------
		let s:acb50 = 4
		let s:acv50 = 5
		let s:acr50 = 1
		let s:aco50 = 3
		let s:acg50 = 2
		let s:acc50 = 6
		" ---------
		let s:acb70 = 4
		let s:acv70 = 5
		let s:acr70 = 1
		let s:aco70 = 3
		let s:acg70 = 2
		let s:acc70 = 6
	else
		let s:base1 = 0
		let s:base2 = 8
		let s:base3 = 7
		let s:base4 = 15
		" ---------
		let s:acb50 = 4
		let s:acv50 = 5
		let s:acr50 = 1
		let s:aco50 = 3
		let s:acg50 = 2
		let s:acc50 = 6
		" ---------
		let s:acb70 = 12
		let s:acv70 = 13
		let s:acr70 = 9
		let s:aco70 = 11
		let s:acg70 = 10
		let s:acc70 = 14
	endif
else
	let s:envir = 'gui'

	if exists("g:atomic_mode")
		let s:mode = g:atomic_mode
	else
		let s:mode = 1
	endif

	" Base colors 1 & 2
	" -----------------------
	if s:mode == 1
		" Dark blue (soft)
		" -----------------------
		let s:base1 = '#141A1F' " Luma 10%
		let s:base2 = '#1A2128' " Luma 13%
	elseif s:mode == 2
		" Dark blue (hard)
		" -----------------------
		let s:base1 = '#0A0D0F' " Luma 5%
		let s:base2 = '#11151A' " Luma 8%
	elseif s:mode == 3
		" Dark cyan (soft)
		" -----------------------
		let s:base1 = '#121C1C' " Luma 10%
		let s:base2 = '#172424' " Luma 13%
	elseif s:mode == 4
		" Dark cyan (hard)
		" -----------------------
		let s:base1 = '#080D0D' " Luma 5%
		let s:base2 = '#0E1616' " Luma 8%
	elseif s:mode == 5
		" Night orange (soft)
		" -----------------------
		let s:base1 = '#1E1813' " Luma 10%
		let s:base2 = '#251F18' " Luma 13%
	elseif s:mode == 6
		" Night orange (hard)
		" -----------------------
		let s:base1 = '#0E0B09' " Luma 5%
		let s:base2 = '#17130F' " Luma 8%
	elseif s:mode == 7
		" Night red (soft)
		" -----------------------
		let s:base1 = '#211515' " Luma 10%
		let s:base2 = '#2B1C1C' " Luma 13%
	elseif s:mode == 8
		" Night red (hard)
		" -----------------------
		let s:base1 = '#100A0A' " Luma 5%
		let s:base2 = '#1A1111' " Luma 8%
	elseif s:mode == 9
		" Light mode (soft)
		" -----------------------
		let s:base1 = '#EFE6C9' " Luma 90%
		let s:base2 = '#EBDFBA' " Luma 87%
	elseif s:mode == 10
		" Light mode (hard)
		" -----------------------
		let s:base1 = '#F7F2E4' " Luma 95%
		let s:base2 = '#F2EBD4' " Luma 92%
	endif

	" Base colors 3 & 4
	" -----------------------
	if s:mode == 1 || s:mode == 2
		" Dark blue
		" -----------------------
		let s:base3 = '#6B859E' " Luma 50%
		let s:base4 = '#A6B5C5' " Luma 70%

		"  Extra for GUI
		let s:base5 = '#193958' " Luma 20% (column)
		let s:base6 = '#2A3540' " Luma 20% (select)
	elseif s:mode == 3 || s:mode == 4
		" Dark cyan
		" -----------------------
		let s:base3 = '#5E8F8F' " Luma 50%
		let s:base4 = '#99BDBD' " Luma 70%

		"  Extra for GUI
		let s:base5 = '#134040' " Luma 20% (column)
		let s:base6 = '#253939' " Luma 20% (select)
	elseif s:mode == 5 || s:mode == 6
		" Night orange
		" -----------------------
		let s:base3 = '#957B62' " Luma 50%
		let s:base4 = '#C0AF9F' " Luma 70%

		"  Extra for GUI
		let s:base5 = '#472E15' " Luma 20% (column)
		let s:base6 = '#3B3127' " Luma 20% (select)
	elseif s:mode == 7 || s:mode == 8
		" Night red
		" -----------------------
		let s:base3 = '#A27171' " Luma 50%
		let s:base4 = '#C7A9A9' " Luma 70%

		"  Extra for GUI
		let s:base5 = '#651D1D' " Luma 20% (column)
		let s:base6 = '#442C2C' " Luma 20% (select)
	elseif s:mode == 9 || s:mode == 10
		" Light mode
		" -----------------------
		let s:base3 = '#8D815C' " Luma 50%
		let s:base4 = '#554D37' " Luma 30%

		"  Extra for GUI
		let s:base5 = '#E0CE96' " Luma 80% (column)
		let s:base6 = '#D3CDBB' " Luma 80% (select)
	endif

	" Accent colors
	" -----------------------
	if s:mode >= 1 && s:mode <= 8
		" Dark background
		" -----------------------
		" Dark accent colors
		let s:acb50 = '#3890E9' " |
		let s:acv50 = '#A359ED' " |
		let s:acr50 = '#EC5252' " | Luma 50%
		let s:aco50 = '#C97016' " |
		let s:acg50 = '#5DA713' " |
		let s:acc50 = '#13AFAF' " |

		" Light accent colors
		let s:acb70 = '#7DBEFF' " |
		let s:acv70 = '#CB96FF' " |
		let s:acr70 = '#FF9191' " | Luma 70%
		let s:aco70 = '#EDA55D' " |
		let s:acg70 = '#9ACD68' " |
		let s:acc70 = '#6ECFCF' " |

		"  Extra for GUI
		let s:diffr = '#4E0404'
		let s:diffg = '#122202'
		let s:diffb = '#031F3A'
		let s:diffv = '#2D0556'
		let s:difgg = s:acg70
	else
		" Light background
		" -----------------------
		" Dark accent colors
		let s:acb50 = '#095CAE' " |
		let s:acv50 = '#7C19DF' " |
		let s:acr50 = '#C11C1C' " | Luma 30%
		let s:aco50 = '#824100' " | (instead of 50%)
		let s:acg50 = '#346900' " |
		let s:acc50 = '#006E6E' " |

		" Light accent colors
		let s:acb70 = '#3890E9' " |
		let s:acv70 = '#A359ED' " |
		let s:acr70 = '#EC5252' " | Luma 50%
		let s:aco70 = '#C97016' " | (instead of 70%)
		let s:acg70 = '#5DA713' " |
		let s:acc70 = '#13AFAF' " |

		"  Extra for GUI
		let s:diffr = '#FFDBDB'
		let s:diffg = '#D6F7B6'
		let s:diffb = '#D5EAFF'
		let s:diffv = '#EEDDFF'
		let s:difgg = s:acg50
	endif

	" Commands
	command! AtomicDarkBlueSoft        let g:atomic_mode = 1
				\ | colorscheme atomic
	command! AtomicDarkBlueHard        let g:atomic_mode = 2
				\ | colorscheme atomic
	command! AtomicDarkCyanSoft        let g:atomic_mode = 3
				\ | colorscheme atomic
	command! AtomicDarkCyanHard        let g:atomic_mode = 4
				\ | colorscheme atomic
	command! AtomicNightOrangeSoft     let g:atomic_mode = 5
				\ | colorscheme atomic
	command! AtomicNightOrangeHard     let g:atomic_mode = 6
				\ | colorscheme atomic
	command! AtomicNightRedSoft        let g:atomic_mode = 7
				\ | colorscheme atomic
	command! AtomicNightRedHard        let g:atomic_mode = 8
				\ | colorscheme atomic
	command! AtomicLightSoft           let g:atomic_mode = 9
				\ | colorscheme atomic
	command! AtomicLightHard           let g:atomic_mode = 10
				\ | colorscheme atomic

	function! CycleModes()
		let s:cycle = g:atomic_mode

		if s:cycle == 1
			let g:atomic_mode = 2
		elseif s:cycle == 2
			let g:atomic_mode = 3
		elseif s:cycle == 3
			let g:atomic_mode = 4
		elseif s:cycle == 4
			let g:atomic_mode = 5
		elseif s:cycle == 5
			let g:atomic_mode = 6
		elseif s:cycle == 6
			let g:atomic_mode = 7
		elseif s:cycle == 7
			let g:atomic_mode = 8
		elseif s:cycle == 8
			let g:atomic_mode = 9
		elseif s:cycle == 9
			let g:atomic_mode = 10
		elseif s:cycle == 10
			let g:atomic_mode = 1
		endif
	endfunction

endif

" UI
"----------------------------------------------------------------
execute 'hi Normal '       . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi LineNr '       . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi NonText '      . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi SpecialKey '   . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" -------------------------.
execute 'hi Search '       . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:base2 . ' ' . s:envir . '=bold'
execute 'hi MatchParen '                                     . s:envir . 'bg=' . s:base2 . ' ' . s:envir . '=bold'
" -------------------------.
execute 'hi TabLine '      . s:envir . 'fg=' . s:base1 . ' ' . s:envir . 'bg=' . s:base3 . ' ' . s:envir . '=none'
execute 'hi TabLineSel '   . s:envir . 'fg=' . s:base1 . ' ' . s:envir . 'bg=' . s:acc50 . ' ' . s:envir . '=none'
execute 'hi TabLineFill '  . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base2 . ' ' . s:envir . '=none'
" -------------------------.
execute 'hi StatusLine '   . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base2 . ' ' . s:envir . '=none'
execute 'hi StatusLineNC ' . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base2 . ' ' . s:envir . '=none'
" -------------------------.
execute 'hi WildMenu '     . s:envir . 'fg=' . s:base1 . ' ' . s:envir . 'bg=' . s:acc50 . ' ' . s:envir . '=none'
execute 'hi VertSplit '    . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi Directory '    . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" -------------------------.
execute 'hi ModeMsg '      . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi MoreMsg '      . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" -------------------------.
execute 'hi Question '     . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi WarningMsg '   . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi ErrorMsg '     . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" -------------------------.
execute 'hi Folded '       . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base2 . ' ' . s:envir . '=none'
execute 'hi FoldColumn '   . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'

if has('gui_running')
	execute 'hi SpellBad '     . s:envir . '=undercurl'
	execute 'hi SpellCap '     . s:envir . '=undercurl'
	execute 'hi SpellLocal '   . s:envir . '=undercurl'
	execute 'hi SpellRare '    . s:envir . '=undercurl'
	" -------------------------.
	execute 'hi DiffAdd '      . s:envir . 'bg=' . s:diffg . ' ' . s:envir . '=none'
	execute 'hi DiffAdded '    . s:envir . 'bg=' . s:diffg . ' ' . s:envir . '=none'
	execute 'hi DiffChange '   . s:envir . 'bg=' . s:diffb . ' ' . s:envir . '=none'
	execute 'hi DiffDelete '   . s:envir . 'bg=' . s:diffr . ' ' . s:envir . '=none'
	execute 'hi DiffRemoved '  . s:envir . 'bg=' . s:diffr . ' ' . s:envir . '=none'
	execute 'hi DiffText '     . s:envir . 'fg=' . s:difgg . ' ' . s:envir . 'bg=' . s:diffg . ' ' . s:envir . '=bold'
	" -------------------------.
	execute 'hi Visual '       . s:envir . 'bg=' . s:base6 . ' ' . s:envir . '=none'
else
	execute 'hi SpellBad '     . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:base2 . ' ' . s:envir . '=italic,underline'
	execute 'hi SpellCap '     . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base2 . ' ' . s:envir . '=italic,underline'
	execute 'hi SpellLocal '   . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:base2 . ' ' . s:envir . '=italic,underline'
	execute 'hi SpellRare '    . s:envir . 'fg=' . s:acv50 . ' ' . s:envir . 'bg=' . s:base2 . ' ' . s:envir . '=italic,underline'
	" -------------------------.
	execute 'hi DiffAdd '      . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
	execute 'hi DiffAdded '    . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
	execute 'hi DiffChange '   . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
	execute 'hi DiffDelete '   . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
	execute 'hi DiffRemoved '  . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
	execute 'hi DiffText '     . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none,bold'
	" -------------------------.
	execute 'hi Visual '       . s:envir . 'fg=' . s:base1 . ' ' . s:envir . 'bg=' . s:base3 . ' ' . s:envir . '=none'
endif

" Cursorline
"----------------------------------------------------------------
if version >= 700
	execute 'hi PMenu '        . s:envir . 'fg=' . s:base1 . ' ' . s:envir . 'bg=' . s:base3 . ' ' . s:envir . '=none'
	execute 'hi PMenuSel '     . s:envir . 'fg=' . s:base1 . ' ' . s:envir . 'bg=' . s:acc50 . ' ' . s:envir . '=none'
	execute 'hi SignColumn '   . s:envir . 'bg=' . s:base3 . ' ' . s:envir . '=none'
endif

if version >= 703
	if has('gui_running')
		execute 'hi ColorColumn ' . s:envir . 'bg=' . s:base5 . ' ' . s:envir . '=none'
	else
		execute 'hi ColorColumn ' . s:envir . 'bg=' . s:base2 . ' ' . s:envir . '=none'
	endif
	execute 'hi CursorLine '   . s:envir . 'bg=' . s:base2 . ' ' . s:envir . '=none'
	execute 'hi CursorLineNr ' . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:base2 . ' ' . s:envir . '=bold'
	execute 'hi CursorColumn ' . s:envir . 'bg=' . s:base2 . ' ' . s:envir . '=none'
endif

" Standard
" ----------------------------------------------------------------
execute 'hi Comment '        . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi SpecialComment ' . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=underline'
" ---------------------------.
execute 'hi Constant '       . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi String '         . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi Character '      . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi Number '         . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi Boolean '        . s:envir . 'fg=' . s:acv50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi Float '          . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" ---------------------------.
execute 'hi Identifier '     . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi Function '       . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" ---------------------------.
execute 'hi Statement '      . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi Conditional '    . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi Repeat '         . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi Label '          . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi Operator '       . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi Keyword '        . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi Exception '      . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" ---------------------------.
execute 'hi PreProc '        . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi Include '        . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi Define '         . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi Macro '          . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi PreCondit '      . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" ---------------------------.
execute 'hi Type '           . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi StorageClass '   . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi Structure '      . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi Typedef '        . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" ---------------------------.
execute 'hi Special '        . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi SpecialChar '    . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi Tag '            . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi Delimiter '      . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi Debug '          . s:envir . 'fg=' . s:base1 . ' ' . s:envir . 'bg=' . s:aco50 . ' ' . s:envir . '=none'
" ---------------------------.
execute 'hi Underlined '     . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=underline'
execute 'hi Ignore '         . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi Error '          . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi Todo '           . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi Title '          . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'

" Syntastic
"----------------------------------------------------------------
execute 'hi SyntasticError '        . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=bold,underline'
execute 'hi SyntasticWarning '      . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=bold,underline'
execute 'hi SyntasticStyleError '   . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=bold,underline'
execute 'hi SyntasticStyleWarning ' . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=bold,underline'

" Neomake
"----------------------------------------------------------------
execute 'hi NeomakeErrorSign '   . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi NeomakeWarningSign ' . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi NeomakeMessageSign ' . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi NeomakeInfoSign '    . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'

" GitGutter
"----------------------------------------------------------------
execute 'hi GitGutterAdd '          . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi GitGutterChange '       . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi GitGutterDelete '       . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi GitGutterChangeDelete ' . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'

" VimL
"----------------------------------------------------------------
execute 'hi vimVar '           . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi vimNumber '        . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi vimCommand '       . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi vimIsCommand '     . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi vimNotFunc '       . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" -----------------------------.
execute 'hi vimFunction '      . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi vimUserFunc '      . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi vimFuncName '      . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi vimFuncBody '      . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi vimFuncKey '       . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi vimFuncVar '       . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi vimFuncSid '       . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi vimFuncBlank '     . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" -----------------------------.
execute 'hi vimAddress '       . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi vimSubst '         . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" -----------------------------.
execute 'hi vimMap '           . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi vimMapMod '        . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi vimMapModKey '     . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi vimNotation '      . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi vimBracket '       . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi vimMapRhs '        . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi vimMapRhsExtend '  . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi vimMapLhs '        . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" -----------------------------.
execute 'hi vimAugroupKey '    . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi vimAutoCmd '       . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi vimAutoEvent '     . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" -----------------------------.
execute 'hi vimLet '           . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi vimSet '           . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi vimSetMod '        . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi vimSetEqual '      . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi vimOption '        . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi vimSynType '       . s:envir . 'fg=' . s:acv50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi vimOper '          . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi vimSep '           . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi vimSetSep '        . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi vimParenSep '      . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi vimCtrlChar '      . s:envir . 'fg=' . s:acv50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi vimContinue '      . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi vimCommentTitle '  . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base2 . ' ' . s:envir . '=none'
execute 'hi vimCommentString ' . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:base2 . ' ' . s:envir . '=none'

augroup vimAtomic
autocmd!
autocmd ColorScheme atomic
		\ execute 'hi vimKeywords '  . s:envir . 'fg=' . s:acg70 |
		\ execute 'hi vimKeywords2 ' . s:envir . 'fg=' . s:acr70 |
		\ autocmd Filetype vim
		\ syn keyword vimKeywords if endif
		\ containedin=vimFuncBody |
		\ syn keyword vimKeywords2 try catch endtry
		\ containedin=vimFuncBody
augroup END

" HTML
" ----------------------------------------------------------------
execute 'hi htmlTag '            . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi htmlTagN '           . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi htmlEndTag '         . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi htmlTagName '        . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi htmlScriptTag '      . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi htmlSpecialTagName ' . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi htmlArg '            . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi htmlTitle '          . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi htmlSpecialChar '    . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'

augroup htmlAtomic
autocmd!
autocmd ColorScheme atomic
		\ execute 'hi htmlEqual ' . s:envir . 'fg=' . s:base4 |
		\ autocmd Filetype html,php
		\ syn match htmlEqual /=/
		\ containedin=htmlTag
augroup END

" XML
" ----------------------------------------------------------------
execute 'hi xmlTag '             . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi xmlTagName '         . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi xmlEndTag '          . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi xmlNamespace '       . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" -------------------------------.
execute 'hi xmlEntity '          . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi xmlEntityPunct '     . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" -------------------------------.
execute 'hi xmlAttrib '          . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi xmlAttribPunct '     . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi xmlString '          . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" -------------------------------.
execute 'hi xmlProcessingDelim ' . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi xmlProcessing '      . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" -------------------------------.
execute 'hi xmlCdataCdata '      . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi xmlCdataStart '      . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi xmlCdataEnd '        . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi xmlCdata '           . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" -------------------------------.
execute 'hi xmlDocType '         . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi xmlDocTypeDecl '     . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi xmlDocTypeKeyword '  . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi xmlInlineDTD '       . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'

augroup xmlAtomic
autocmd!
autocmd ColorScheme atomic
		\ execute 'hi xmlName ' . s:envir . 'fg=' . s:acb50 |
		\ autocmd Filetype xml
		\ syn match xmlName /xml/
		\ containedin=ALL
augroup END

" PHP
" ----------------------------------------------------------------
execute 'hi phpRegion '               . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi phpParent '               . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi phpOperator '             . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi phpComparison '           . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi phpMemberSelector '       . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" ------------------------------------.
execute 'hi phpVarSelector '          . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi phpIdentifier '           . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi phpIntVar '               . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi phpEnvVar '               . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi phpConstant '             . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi phpCoreConstant '         . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi phpMagicConstants '       . s:envir . 'fg=' . s:acv50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi phpBoolean '              . s:envir . 'fg=' . s:acv50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi phpNumber '               . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" ------------------------------------.
execute 'hi phpType '                 . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi phpKeyword '              . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi phpStatement '            . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi phpConditional '          . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi phpRepeat '               . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi phpLabel '                . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi phpException '            . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" ------------------------------------.
execute 'hi phpDefine '               . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi phpInclude '              . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" ------------------------------------.
execute 'hi phpMethods '              . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi phpMethodsVar '           . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" ------------------------------------.
execute 'hi phpStructure '            . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi phpStorageClass '         . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" ------------------------------------.
execute 'hi phpFunctions '            . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi phpSpecialFunction '      . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" ------------------------------------.
execute 'hi phpStringSingle '         . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi phpStringDouble '         . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi phpStringDelimiter '      . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi phpBacktick '             . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi phpBackslashSequences '   . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi phpBackslashDoubleQuote ' . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi phpBackslashSingleQuote ' . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" ------------------------------------.
execute 'hi phpComment '              . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi phpDocTags '              . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi phpDocCustomTags '        . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" ------------------------------------.
execute 'hi phpFCKeyword '            . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi phpSCKeyword '            . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'

" CSS
" ----------------------------------------------------------------
execute 'hi cssTagName '            . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cssClassName '          . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cssClassNameDot '       . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cssIdentifier '         . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cssPseudoClass '        . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=italic'
execute 'hi cssPseudoClassId '      . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=italic'
execute 'hi cssPseudoClassFn '      . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=italic'
execute 'hi cssPseudoClassLang '    . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=italic'
" ----------------------------------.
execute 'hi cssAttributeSelector '  . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cssSelectorOp '         . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cssSelectorOp2 '        . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cssBraces '             . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" ----------------------------------.
execute 'hi cssDefinition '         . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cssVendor '             . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cssHacks '              . s:envir . 'fg=' . s:acv50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" ----------------------------------.
execute 'hi cssProp '               . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cssAttr '               . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cssAttrComma '          . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" ----------------------------------.
execute 'hi cssImportant '          . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cssUnicodeEscape '      . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cssStringQQ '           . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cssStringQ '            . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cssURL '                . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=underline'
" ----------------------------------.
execute 'hi cssColor '              . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cssValueNumber '        . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cssValueAngle '         . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cssValueTime '          . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cssValueLength '        . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cssValueFrequency '     . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cssUnitDecorators '     . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cssKeyFrameSelector '   . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cssKeyFrame '           . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" ----------------------------------.
execute 'hi cssFunction '           . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cssFunctionName '       . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" ----------------------------------.
execute 'hi cssFontDescriptor '     . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cssIncludeKeyword '     . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cssMediaKeyword '       . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cssMediaComma '         . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cssMediaType '          . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cssMediaProp '          . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cssMediaAttr '          . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cssComment '            . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'

augroup cssAtomic
autocmd!
autocmd ColorScheme atomic
		\ execute 'hi VendorPrefix ' . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . '=italic' |
		\ autocmd Filetype css
		\ syn match VendorPrefix /-\(moz\|webkit\|o\|ms\)-[a-zA-Z-]\+/
		\ containedin=ALL
augroup END

" JavaScript
" ----------------------------------------------------------------
execute 'hi javaScriptBraces '       . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi javaScriptParens '       . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi javaScriptOperator '     . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi javaScriptIdentifier '   . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi javaScriptConstant '     . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" -----------------------------------.
execute 'hi javaScriptType '         . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi javaScriptFunction '     . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi javaScriptStatement '    . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi javaScriptConditional '  . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi javaScriptRepeat '       . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi javaScriptBranch '       . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" -----------------------------------.
execute 'hi javaScriptNumber '       . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi javaScriptBoolean '      . s:envir . 'fg=' . s:acv50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi javaScriptMember '       . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi javaScriptGlobal '       . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" -----------------------------------.
execute 'hi javaScriptCharacter '    . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi javaScriptLabel '        . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi javaScriptStringS '      . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi javaScriptStringD '      . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi javaScriptSpecial '      . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi javaScriptRegexpString ' . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'

" For the plugin https://github.com/pangloss/vim-javascript
execute 'hi jsFunction '      . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi jsFuncArgs '      . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi jsFuncName '      . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi jsFuncCall '      . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi jsFunctionKey '   . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" ----------------------------.
execute 'hi jsFlowObjectKey ' . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi jsPrototype '     . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi jsObject '        . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi jsObjectValue '   . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi jsGlobalObjects ' . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" -------------------------  -.
execute 'hi jsRegexpString '  . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi jsStorageClass '  . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi jsClassKeyword '  . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi jsBrackets '      . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi jsSpecial '       . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi jsThis '          . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'

" Makefile
" ----------------------------------------------------------------
execute 'hi makeIdent '      . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi makeTarget '     . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi makeImplicit '   . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi makeInclude '    . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi makeDefine '     . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi makeSpecTarget ' . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi makeStatement '  . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi makeCommands '   . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi makeSpecial '    . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi makeComment '    . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'

" CMake
" ----------------------------------------------------------------
execute 'hi cmakeStatement '     . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cmakeArguments '     . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cmakeArgument '      . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cmakeVariableValue ' . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cmakeEnvironment '   . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cmakeEscaped '       . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cmakeOperators '     . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cmakeString '        . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'

" C
" ----------------------------------------------------------------
execute 'hi cComment '          . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cCppOut '           . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cInclude '          . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cIncluded '         . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cDefine '           . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cPreProc '          . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" ------------------------------.
execute 'hi cStorageClass '     . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cStructure '        . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cFunction '         . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cFormat '           . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cType '             . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" ------------------------------.
execute 'hi cConstant '         . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cCharacter '        . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cSpecialCharacter ' . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cString '           . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cCppString '        . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cSpecial '          . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cNumber '           . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cOctal '            . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cFloat '            . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" ------------------------------.
execute 'hi cRepeat '           . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cConditional '      . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cStatement '        . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" ------------------------------.
execute 'hi cOperator '         . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cUserLabel '        . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cLabel '            . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'

" CPP
" ----------------------------------------------------------------
execute 'hi cppStorageClass '       . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cppStructure '          . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cppExceptions '         . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cppAccess '             . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cppCast '               . s:envir . 'fg=' . s:acv50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cppType '               . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cppModifier '           . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" ----------------------------------.
execute 'hi cppBoolean '            . s:envir . 'fg=' . s:acv50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cppConstant '           . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cppStatement '          . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cppSpecialCharacter '   . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cppOperator '           . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cppRawString '          . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi cppRawStringDelimiter ' . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'

augroup cAtomic
autocmd!
autocmd ColorScheme atomic
		\ execute 'hi cFunction ' . s:envir . 'fg=' . s:acb70 |
		\ autocmd Filetype c,cpp
		\ syn match cFunction "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*)("me=e-2 |
		\ syn match cFunction "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*("me=e-1
augroup END

" Shell/Bash
" ----------------------------------------------------------------
execute 'hi shComment '        . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi shCommand '        . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi shCommandSub '     . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi shCmdSubRegion '   . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi shCmdParenRegion ' . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" -----------------------------.
execute 'hi shLoop '           . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi shConditional '    . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi shTestOpr '        . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" -----------------------------.
execute 'hi shStatement '      . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi shVariable '       . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi shShellVariables ' . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi shNoQuote '        . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi shSpecial '        . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi shQuote '          . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi shSingleQuote '    . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi shDoubleQuote '    . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi shEcho '           . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" -----------------------------.
execute 'hi shDeref '          . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi shDerefOp '        . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi shDerefVar '       . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi shDerefSimple '    . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi shDerefPattern '   . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" -----------------------------.
execute 'hi shFunction '       . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi shFunctionKey '    . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi shFunctionOne '    . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi shFunctionTwo '    . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi shArithRegion '    . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi shArithmetic '     . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" -----------------------------.
execute 'hi shCase '           . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi shCaseEsac '       . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi shOperator '       . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi shSetList '        . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi shOption '         . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'

" Shell/Zsh
" ----------------------------------------------------------------
execute 'hi zshComment '         . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi zshCommands '        . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" -------------------------------.
execute 'hi zshQuoted '          . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi zshString '          . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi zshStringDelimiter ' . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" -------------------------------.
execute 'hi zshRepeat '          . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi zshConditional '     . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi zshKeyword '         . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi zshDelimiter '       . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi zshException '       . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" -------------------------------.
execute 'hi zshDeref '           . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi zshShortDeref '      . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi zshSubst '           . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi zshOldSubst '        . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi zshSubstDelim '      . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi zshPOSIXString '     . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" -------------------------------.
execute 'hi zshFunction '        . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi zshOptions '         . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi zshVariable '        . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi zshVariableDef '     . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'

" Python
" ----------------------------------------------------------------
execute 'hi pythonComment '     . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi pythonInclude '     . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi pythonImport '      . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" ------------------------------.
execute 'hi pythonOperator '    . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi pythonStatement '   . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi pythonAsync '       . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi pythonConditional ' . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi pythonRepeat '      . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi pythonException '   . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi pythonExceptions '  . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" ------------------------------.
execute 'hi pythonDecorator '   . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi pythonFunction '    . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi pythonBuiltin '     . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" ------------------------------.
execute 'hi pythonString '      . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi pythonRawString '   . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi pythonQuotes '      . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi pythonEscape '      . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi pythonVariable '    . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi pythonNumber '      . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'

" Ruby
" ----------------------------------------------------------------
execute 'hi rubyComment '                . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi rubyData '                   . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi rubyDataDirective '          . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi rubyDocumentation '          . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" ---------------------------------------.
execute 'hi rubyString '                 . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi rubyStringEscape '           . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi rubyStringDelimiter '        . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi rubyRegexp '                 . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi rubyRegexpEscape '           . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi rubyRegexpDelimiter '        . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi rubyRegexpQuantifier '       . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi rubyRegexpDot '              . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi rubyInterpolationDelimiter ' . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi rubyASCIICode '              . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" ---------------------------------------.
execute 'hi rubyModule '                 . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi rubyDefine '                 . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi rubyInclude '                . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi rubyClass '                  . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi rubyFunction '               . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi rubyMethodExceptional '      . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" ---------------------------------------.
execute 'hi rubyNumber '                 . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi rubyInteger '                . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi rubyFloat '                  . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi rubyBoolean '                . s:envir . 'fg=' . s:acv50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi rubyIdentifier '             . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi rubyClassVariable '          . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi rubyGlobalVariable '         . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi rubyInstanceVariable '       . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi rubyPredefinedVariable '     . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi rubyPredefinedIdentifier '   . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi rubyPredefinedConstant '     . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi rubyPseudoVariable '         . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi rubyConstant '               . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" ---------------------------------------.
execute 'hi rubyRepeat '                 . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi rubyRepeatModifier '         . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi rubyOptionalDo '             . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi rubyConditional '            . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi rubyConditionalModifier '    . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi rubyKeyword '                . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi rubyControl '                . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi rubyBeginEnd '               . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi rubyAccess '                 . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi rubyEval '                   . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi rubyAttribute '              . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi rubyException '              . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi rubyExceptional '            . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" ---------------------------------------.
execute 'hi rubySymbol '                 . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi rubyCurlyBlock '             . s:envir . 'fg=' . s:base4 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi rubyOperator '               . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'

" Perl
" ----------------------------------------------------------------
execute 'hi perlSharpBang '        . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi perlControl '          . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi perlInclude '          . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" ---------------------------------.
execute 'hi perlString '           . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi perlSpecial '          . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi perlSpecialMatch '     . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi perlCharacter '        . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" ---------------------------------.
execute 'hi perlMatch '            . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi perlMatchStartEnd '    . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" ---------------------------------.
execute 'hi perlNumber '           . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi perlFloat '            . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" ---------------------------------.
execute 'hi perlType '             . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi perlIdentifier '       . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi perlVarPlain '         . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi perlLabel '            . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" ---------------------------------.
execute 'hi perlStatement '        . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi perlStatementList '    . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi perlStatementFlow '    . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi perlStatementInclude ' . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi perlStatementStorage ' . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi perlStatementControl ' . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi perlConditional '      . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi perlRepeat '           . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" ---------------------------------.
execute 'hi perlFunction '         . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi perlMethod '           . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi perlSubName '          . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi perlSubPrototype '     . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'

" Go
" ----------------------------------------------------------------
execute 'hi goDirective '      . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi goDeclaration '    . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi goDeclType '       . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" -----------------------------.
execute 'hi goStatement '      . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi goConditional '    . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi goLabel '          . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi goRepeat '         . s:envir . 'fg=' . s:acg70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" -----------------------------.
execute 'hi goType '           . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi goSignedInts '     . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi goUnsignedInts '   . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi goFloats '         . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi goComplexes '      . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" -----------------------------.
execute 'hi goBuiltins '       . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi goConstants '      . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" -----------------------------.
execute 'hi goEscapeOctal '    . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi goEscapeC '        . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi goEscapeX '        . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi goEscapeU '        . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi goEscapeBigU '     . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi goCharacter '      . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" -----------------------------.
execute 'hi goString '         . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi goStringGroup '    . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi goRawString '      . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi goSpecialString '  . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" -----------------------------.
execute 'hi goDecimalInt '     . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi goHexadecimalInt ' . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi goOctalInt '       . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi Integer '          . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi goFloat '          . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi goImaginary '      . s:envir . 'fg=' . s:acr50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'

" For the plugin https://github.com/fatih/vim-go
execute 'hi goField '                 . s:envir . 'fg=' . s:aco70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi goMethodCall '            . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi goFunctionCall '          . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi goBoolean '               . s:envir . 'fg=' . s:acv50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi goPredefinedIdentifiers ' . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi goExtraType '             . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi goTypeDecl '              . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi goVarARgs '               . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'

" Markdown
" ----------------------------------------------------------------
execute 'hi htmlCommentPart '           . s:envir . 'fg=' . s:base3 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi markdownH1 '                . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi markdownH2 '                . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi markdownH3 '                . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi markdownH4 '                . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi markdownH5 '                . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi markdownH6 '                . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi markdownHeadingDelimiter '  . s:envir . 'fg=' . s:acb50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" --------------------------------------.
execute 'hi markdownCode '              . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi markdownCodeDelimiter '     . s:envir . 'fg=' . s:acc50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" --------------------------------------.
execute 'hi markdownUrl '               . s:envir . 'fg=' . s:acb70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=underline'
execute 'hi markdownUrlTitle '          . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=underline'
execute 'hi markdownUrlTitleDelimiter ' . s:envir . 'fg=' . s:acc70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=underline'
" --------------------------------------.
execute 'hi markdownLinkText '          . s:envir . 'fg=' . s:acr70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi markdownListMarker '        . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi markdownOrderedListMarker ' . s:envir . 'fg=' . s:acg50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" --------------------------------------.
execute 'hi markdownRule '              . s:envir . 'fg=' . s:aco50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi markdownId '                . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi markdownIdDeclaration '     . s:envir . 'fg=' . s:acv70 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
execute 'hi markdownBlockQuote '        . s:envir . 'fg=' . s:acv50 . ' ' . s:envir . 'bg=' . s:base1 . ' ' . s:envir . '=none'
" --------------------------------------.
execute 'hi markdownBold '              . s:envir . '=bold'
execute 'hi markdownItalic '            . s:envir . '=italic'
