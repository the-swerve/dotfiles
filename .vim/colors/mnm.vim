" Name:     Mnm vim colorscheme
" Author:   Jay Bolton
" URL:      http://github.com/the-swerve/mnm
"
" Xterm color chart:
" http://upload.wikimedia.org/wikipedia/commons/9/95/Xterm_color_chart.png
"
" Usage "{{{
"
" SOLARIZED HEX     16/8 TERMCOL  XTERM/HEX   L*A*B      sRGB        HSB
" --------- ------- ---- -------  ----------- ---------- ----------- -----------
" base03    #002b36  8/4 brblack  234 #1c1c1c 15 -12 -12   0  43  54 193 100  21
" base02    #073642  0/4 black    235 #262626 20 -12 -12   7  54  66 192  90  26
" base01    #586e75 10/7 brgreen  240 #4e4e4e 45 -07 -07  88 110 117 194  25  46
" base00    #657b83 11/7 bryellow 241 #585858 50 -07 -07 101 123 131 195  23  51
" base0     #839496 12/6 brblue   244 #808080 60 -06 -03 131 148 150 186  13  59
" base1     #93a1a1 14/4 brcyan   245 #8a8a8a 65 -05 -02 147 161 161 180   9  63
" base2     #eee8d5  7/7 white    254 #d7d7af 92 -00  10 238 232 213  44  11  93
" base3     #fdf6e3 15/7 brwhite  230 #ffffd7 97  00  10 253 246 227  44  10  99
" yellow    #b58900  3/3 yellow   136 #af8700 60  10  65 181 137   0  45 100  71
" orange    #cb4b16  9/3 brred    166 #d75f00 50  50  55 203  75  22  18  89  80
" red       #dc322f  1/1 red      160 #d70000 50  65  45 220  50  47   1  79  86
" magenta   #d33682  5/5 magenta  125 #af005f 50  65 -05 211  54 130 331  74  83
" violet    #6c71c4 13/5 brmagenta 61 #5f5faf 50  15 -45 108 113 196 237  45  77
" blue      #268bd2  4/4 blue      33 #0087ff 55 -10 -45  38 139 210 205  82  82
" cyan      #2aa198  6/6 cyan      37 #00afaf 60 -35 -05  42 161 152 175  74  63
" green     #859900  2/2 green     64 #5f8700 60 -20  65 133 153   0  68 100  60
"
" ---------------------------------------------------------------------
" COLORSCHEME HACKING
" ---------------------------------------------------------------------
"
" }}}
" Default option values"{{{
" ---------------------------------------------------------------------

set background=dark
hi clear
if exists("syntax_on")
	syntax reset
endif

let g:colors_name = "mnm"

hi Normal ctermbg=233 ctermfg=15

" Highlight spaces that are between tabs
" (tabs for indentation level, spaces for alignment)
" (spaces only come after tabs and tabs before spaces)
hi BadSpaces ctermbg=52 " highlight spaces between tabs
match BadSpaces /\s\+$\| \+\ze\t/
hi BadTabs ctermbg=52 " highlight tabs after spaces
match BadTabs /[^\t]\zs\t\+/

" Invisible character colors
hi NonText ctermfg=236
hi SpecialKey ctermfg=236

" grey folding
hi Folded ctermfg=white ctermbg=236

" line numbers
hi LineNr ctermfg=246 ctermbg=233

" underline search results
hi Search ctermfg=228 ctermbg=none cterm=underline
hi Comment ctermfg=243

" make the statusline more subtle
hi StatusLine cterm=none ctermbg=235 ctermfg=15

" make the tab bar more subtle
hi TabLineFill cterm=bold ctermbg=237
hi TabLine cterm=none ctermbg=237 ctermfg=15
hi TabLineSel cterm=bold

" code highlights
hi Function ctermfg=15 cterm=bold
hi Operator ctermfg=84 cterm=none
hi String ctermfg=71 cterm=none

" Structure
hi Statement ctermfg=250
hi Define ctermfg=250

" Syntactic noise
hi Noise ctermfg=245
hi StorageClass ctermfg=248

" Values
hi Constant ctermfg=117 cterm=none
hi Number ctermfg=117 cterm=none
hi Type ctermfg=117 cterm=none
hi Identifier ctermfg=117 cterm=none
hi Special ctermfg=117 cterm=none

hi Title cterm=bold ctermfg=255

"" file-specific

" vim
hi vimLineComment ctermfg=243

" html
hi htmlTag ctermfg=249
hi htmlTagName ctermfg=249
hi htmlTagN ctermfg=249
hi htmlEndTag ctermfg=249

" rb
hi rubyConstant ctermfg=32
hi rubyMethodBlock ctermfg=15
" de-emphasize syntactic and structural noise
hi rubyBlock ctermfg=250
hi rubyCurlyBlock ctermfg=250
hi rubyCurlyBlockDelimiter ctermfg=250

" erb
hi erubyDelimiter ctermfg=249

" js

" md
hi mkdCode ctermfg=15
