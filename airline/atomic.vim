"----------------------------------------------------------------
"      _    _      _ _
"     / \  (_)_ __| (_)_ __   ___
"    / _ \ | | '__| | | '_ \ / _ \
"   / ___ \| | |  | | | | | |  __/
"  /_/   \_\_|_|  |_|_|_| |_|\___|
"
"----------------------------------------------------------------
"  Theme   : Atomic
"  License : MIT
"  Author  : Gerard Bajona
"  URL     : https://github.com/gerardbm/Atomic
" ----------------------------------------------------------------

let g:airline#themes#atomic#palette = {}

let s:gui00 = "#141A1F"
let s:gui01 = "#EC5252"
let s:gui02 = "#5DA813"
let s:gui03 = "#C97016"
let s:gui04 = "#3790E9"
let s:gui05 = "#A35AED"
let s:gui06 = "#13AEAE"
let s:gui07 = "#6B859E"
let s:gui08 = "#3E4F60"
let s:gui09 = "#FF9191"
let s:gui0A = "#9ACD68"
let s:gui0B = "#EDA45C"
let s:gui0C = "#7DBEFF"
let s:gui0D = "#CA96FF"
let s:gui0E = "#6ECFCF"
let s:gui0F = "#A6B5C5"

let s:cterm00 = 0
let s:cterm01 = 1
let s:cterm02 = 2
let s:cterm03 = 3
let s:cterm04 = 4
let s:cterm05 = 5
let s:cterm06 = 6
let s:cterm07 = 7
let s:cterm08 = 8
let s:cterm09 = 9
let s:cterm0A = 10
let s:cterm0B = 11
let s:cterm0C = 12
let s:cterm0D = 13
let s:cterm0E = 14
let s:cterm0F = 15

let s:N1   = [ s:gui00, s:gui06, s:cterm00, s:cterm06 ] " Mode
let s:N2   = [ s:gui0E, s:gui08, s:cterm0E, s:cterm08 ] " Info
let s:N3   = [ s:gui0E, s:gui08, s:cterm0E, s:cterm08 ] " Status
let g:airline#themes#atomic#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let s:I1   = [ s:gui00, s:gui03, s:cterm00, s:cterm03 ] " Mode
let s:I2   = [ s:gui0B, s:gui08, s:cterm0B, s:cterm08 ] " Info
let s:I3   = [ s:gui0B, s:gui08, s:cterm0B, s:cterm08 ] " Status
let g:airline#themes#atomic#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)

let s:R1   = [ s:gui00, s:gui01, s:cterm00, s:cterm01 ] " Mode
let s:R2   = [ s:gui09, s:gui08, s:cterm09, s:cterm08 ] " Info
let s:R3   = [ s:gui09, s:gui08, s:cterm09, s:cterm08 ] " Status
let g:airline#themes#atomic#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)

let s:V1   = [ s:gui00, s:gui04, s:cterm00, s:cterm04 ] " Mode
let s:V2   = [ s:gui0C, s:gui08, s:cterm0C, s:cterm08 ] " Info
let s:V3   = [ s:gui0C, s:gui08, s:cterm0C, s:cterm08 ] " Status
let g:airline#themes#atomic#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)

let s:IA1   = [ s:gui07, s:gui08, s:cterm07, s:cterm08 ] " Mode
let s:IA2   = [ s:gui07, s:gui08, s:cterm07, s:cterm08 ] " Info
let s:IA3   = [ s:gui07, s:gui08, s:cterm07, s:cterm08 ] " Status
let g:airline#themes#atomic#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)

" Paste mode
let g:airline#themes#atomic#palette.insert_paste = {
	\ 'airline_a': [ s:gui00 , s:gui05 , s:cterm00 , s:cterm05 , '' ] ,
	\ 'airline_b': [ s:gui0D , s:gui08 , s:cterm0D , s:cterm08 , '' ] ,
	\ 'airline_c': [ s:gui0D , s:gui08 , s:cterm0D , s:cterm08 , '' ] }

" Accent color
" It helps to remove the bold typography into modes section
let g:airline#themes#atomic#palette.accents = { 'black': [ s:gui00, '', s:cterm00, '' ] }

" Mode map
let g:airline_mode_map = {
	\ '__' : '--',
	\ 'n'  : 'N',
	\ 'i'  : 'I',
	\ 'R'  : 'R',
	\ 'c'  : 'C',
	\ 'v'  : 'V',
	\ 'V'  : 'V-L',
	\ '' : 'V-B',
	\ 's'  : 'S',
	\ 'S'  : 'S-L',
	\ '' : 'S-B',
	\ 't'  : 'T',
	\ }

" Settings
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.paste = 'Ξ'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.linenr = '␤'
let g:airline_section_z = airline#section#create(['--%1p%%-- ',
	\ g:airline_symbols.linenr .'%l ',
	\ ': %c'])

" Here we define the color map for ctrlp.  We check for the g:loaded_ctrlp
" variable so that related functionality is loaded iff the user is using
" ctrlp. Note that this is optional, and if you do not define ctrlp colors
" they will be chosen automatically from the existing palette.
if !get(g:, 'loaded_ctrlp', 0)
	finish
endif
let g:airline#themes#atomic#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
	\ [ s:gui0A, s:gui08, s:cterm0A, s:cterm08, '' ] ,
	\ [ s:gui0A, s:gui08, s:cterm0A, s:cterm08, '' ] ,
	\ [ s:gui00, s:gui02, s:cterm00, s:cterm02, '' ] )
