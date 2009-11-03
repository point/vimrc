" <<< Tag List >>
let Tlist_Exit_OnlyWindow=1 " Закрывать окно пустое окно 
let Tlist_Show_One_File=1   " показывать таги только из одного файла

let Tlist_Display_Prototype=0
let Tlist_Enable_Fold_Column=0
let Tlist_File_Fold_Auto_Close=1
let Tlist_php_settings = 'php;c:class;f:function'
let tlist_php_settings = 'php;c:class;f:function'
let s:tlist_def_php_settings = 'php;c:class;d:constant;f:function'


" <<< Encoding menu >>>
menu Encoding.utf-8 :e ++enc=2byte-utf-8 <CR> 
menu Encoding.windows-1251 :e ++enc=8bit-cp1251<CR> 
menu Encoding.koi8-u :e ++enc=8bit-koi8-u<CR> 
menu Encoding.ibm-866 :e ++enc=8bit-ibm866<CR> 

" <<< Умный Home и End >>>
" Intelligent Home moves to the first non-blank character on the line, then to
" the very first character on the line
" In Normal mode intelligent End moves after the last character on the line if
" the line is not empty
function HomeButton()
    if col(".") != 1
        let current_cursor_column = col(".")
        execute("normal ^")
        if col(".") == current_cursor_column
            execute("normal 0")
        endif
    endif
endfunction

function EndButton()
    execute("normal $")
    if col("$") != 1
        execute("normal l")
    endif
endfunction
"

" // Set 300 ms for refreshing the Tag Explorer 
  let g:TagExpl_refreshTime  = 300 

" // Set the window height of the Tag Explorer 
  let g:TagExpl_winHeight     = 9 

" // Let the Tag Explorer update the tags file when opening 
  let g:TagExpl_updateTags   = 1 

" // Set "Space" key for refresh the Tag Explorer manually 
  let g:TagExpl_refreshKey    = "<Space>" 

" // Set "Ctrl-b" key for back from the definition context 
  let g:TagExpl_gobackKey  = "<C-b>" 

" // The switch of the Tag Explorer 
  nmap <F12> :TagExplToggle<CR>

  
" let g:vimwiki_home = "/home/point/wiki/"

" vtreeexplorer settings
let treeExplVertical=1
let treeExplVertical=1
let treeExplWinSize=35
let treeExplDirSort=1
let treeExplNoList=1
:nmap <F2> :VSTreeExplore<cr>

" disable autotag.vim. Try later :)
let autotagDisabled=1

let NERDTreeMapActivateNode='<CR>'
