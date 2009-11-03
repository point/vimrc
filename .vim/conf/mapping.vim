"Эта опция определяет где в режиме Вставки кнопка <BS> может удалять символ
"перед курсором. Перечисленные через запятую значения позволяют Vim удалять
"пробелы в начале строки, символы переноса строки и символ, перед которым был
"осуществлён переход в режим Вставки. 
set backspace=indent,eol,start
" перемещать курсор на предыдущую/следующую строку, если
" курсор находится на первом/последнем символе в строке, при вводе
" перечисленных в её значении через запятую команд перемещения курсора
"set whichwrap+=<,>,[,],s,h,l

" Выполнить форматирование коммандой gq 
" По сути пустая клашише. По Умолчанию Q переводит в :Ex mode
"map Q gq

" <<< Visual Mode >>>

" p Замена виделенного текста при вставке в визуальном режиме
vnoremap p <Esc>:let current_reg = @"<CR>gvs<C-R>=current_reg<CR><Esc>

" map < & > to indent blocks
vnoremap < <gv
vnoremap > >gv

" backspace in Visual mode deletes selection
vnoremap <BS> d

" {<cr> in insert morde adding close }
"imap {<CR> {<CR>}<Esc>O


" C-PageUp Moving to previous tab
nmap <C-Left> :tabprevious<cr>
imap <C-Left> <ESC>:tabprevious<cr>

" C-PageDown Moving to next  tab
nmap <C-Right> :tabnext<cr>
imap <C-Right> <ESC>:tabnext<cr>

nmap <Ctrl-Up> <C-W>k<C-W>_ " окно вверх
imap <Ctrl-Up> <Esc><C-W>k<C-W>_a " окно вверх
nmap <Ctrl-Down> <C-W>j<C-W>_ " окно вниз
imap <Ctrl-Down> <Esc><C-W>j<C-W>_a " окно вниз

" <<< Умный Home и End >>>
" see plugins.vim
" Intelligent Home moves to the first non-blank character on the line, then to
" the very first character on the line
nmap <Home> :call HomeButton()<CR>
imap <Home> <C-O>:call HomeButton()<CR>
" In Normal mode intelligent End moves after the last character on the line if
" the line is not empty
nmap <End> :call EndButton()<CR>
"

" более привычные Page Up/Down, когда курсор остаётся в той же строке,
" (а не переносится в верх/низ экрана, как при стандартном PgUp/PgDown)
" Поскольку по умолчанию прокрутка по C-Y/D происходит на полэкрана,
" привязка делается к двойному нажатию этих комбинаций.
nmap <PageUp> <C-U><C-U>
imap <PageUp> <C-O><C-U><C-O><C-U>

nmap <PageDown> <C-D><C-D>
imap <PageDown> <C-O><C-D><C-O><C-D>


" <<< Functional key >>>

" F2 Saving file 
nnoremap <F2> :w<CR>
inoremap <F2> <Esc>:w<CR>a

" Shift-F2 save all files
" Not Working неправильная обработка 
nnoremap <S-F2> :wa<CR>
inoremap <S-F2> <Esc>:wa<CR>i

" F3 open netrw Explorer in new tab 
nnoremap <F3> :tabnew<cr>:Explore<cr>
inoremap <F3> <esc>:tabnew<cr>:Explore<cr>
vnoremap <F3> <esc>:tabnew<cr>:Explore<cr>

" Ctrl-F3 Подымает предыдущую сессию
" Not Working неправильная обработка, покрутит в сторону t_***
nnoremap <C-F3> :source ~/.vim/lastSession.vim<cr>
inoremap <C-F3> <ESC>:source ~/.vim/lastSession.vim<cr>i
vnoremap <C-F3> <ESC>:source ~/.vim/lastSession.vim<cr>v

" F4 change mode from paste to toggle
nmap <F4> :source ~/.vim/lastSession.vim<cr>

" F5 open explorer in current window
nnoremap <F5> :Ex<cr>
inoremap <F5> <esc>:Ex<cr>i
vnoremap <F5> <esc>:Ex<cr>

set pastetoggle=<F6>

" F7 call encoding menu
" see plugins.vim
"<F2>map <F7> :emenu Encoding.<TAB>
map <F7> :FencView<cr>

" F8 open taglist
nnoremap <F8> :TlistToggle<CR>
inoremap <F8> <Esc>:TlistToggle<CR>

" F9 close current folding
nnoremap <F9> <esc>zc<cr>
inoremap <F9> <esc>zc<cr>i
vnoremap <F9> <esc>zc<cr>v

" F10 quit without saving
nnoremap <F10> :qa<CR>
inoremap <F10> <esc>:qa<CR>
vnoremap <F10> <esc>:qa<CR>

