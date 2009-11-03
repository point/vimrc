scriptencoding cp1251

" Количество цветов терминала
set t_Co=256
" Подсветка синтаксиса
syntax on

" подсвечивать все соответствия шаблону
set nohlsearch

" Select colormap: 'soft', 'softlight', 'standard' or 'allblue'
"let xterm16_colormap    = 'soft'

" Select brightness: 'low', 'med', 'high', 'default' or custom levels.
"let xterm16_brightness  = 'high'

"colo xterm16


" <<<  >>>

" цвет выпадающего меню
hi Pmenu ctermbg=239

"highlight Search     ctermfg=Black ctermbg=Red cterm=NONE
highlight Search     ctermfg=NONE ctermbg=NONE cterm=NONE
highlight Visual     cterm=reverse
highlight Cursor     ctermfg=Black ctermbg=Green cterm=NONE

highlight StatusLine ctermfg=blue ctermbg=white
"highlight StatusLine ctermfg=white  ctermbg=darkblue
highlight Statement  ctermfg=Yellow   cterm=NONE
highlight Comment    ctermfg=darkgrey
highlight Indentifier   ctermfg=14  cterm=bold
highlight Directory   ctermfg=white  cterm=bold

highlight Type      cterm=NONE ctermfg=red
highlight TabLineSel ctermfg=black ctermbg=red
highlight TabLine   ctermfg=black ctermbg=gray
highlight Todo font=cterm=underline ctermfg=red

hi Folded              ctermfg=darkgrey ctermbg=black
hi FoldColumn          ctermfg=darkgrey ctermbg=black

hi Directory								ctermfg=12




let php_oldStyle=1
let php_sql_query = 1
let php_htmlInStrings = 0
let php_baselib = 1
let php_alt_properties = 1

" for jquery syntax highliting
au BufRead,BufNewFile *.js set ft=javascript.jquery
