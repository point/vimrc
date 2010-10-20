"" Main .vimrc file

" UTF8 не ставить - логи и дебаги в кроказяблах.
set encoding=utf8

set nocompatible

" Setting up VIM runtime folders
" В Линухе не ставить там само все хорошо работает.
" set runtimepath=$VIMRUNTIME

" определение типа файлов и использование соответствующих плагинов и отступов
" Загружает: $VIMRUNTIME\vim71\filetype.vim 
filetype plugin indent on


"<<< Mouse >>>
set mousehide " Hide the mouse when typing text
" Поддержка мыши
set mouse=a

" Бэкапы и расширения для них
set backup
"set backupext=.bak

" Список путей для размещения swap Файлов.
" По умолчанию ./ во всех ОС, лучше не трогать
"set dir=/temp
set noswapfile 

" Не выгружать буфер из памяти при событии BuffLeave
" ?? Попробовать: поработать с табками с выключенной опцией
set hidden

" Быстрый терминал дополнительные возможности
set ttyfast	   

" кодировки
set fileencodings=usc-bom,utf-8,cp1251,cp866,koi8-r 
set printencoding=cp1251
" <<< Editing, Moving, StatusLive >>>
" История и undo
set history=100     " история комманд и шаблонов поиска
set undolevels=100  " Количество undo 
set showmatch       " Показывать парные скобки etc

" Scrolling
set nowrap       " отключить разбиение на строки
set scrolljump=5 " скролить экран на 5 строк вниз если курсор находится
		 " ближе чем scrolloff строк от границы экрана
set scrolloff=3 " не подпускать курсор ближе чем на 5 строк до границ экрана,
		" скролит автоматически
set sidescroll=5 " ПРокручивать строку на 5 символов если не помещается в экран
set listchars+=precedes:<,extends:> " Маркеры для строк невлазящих в экран

" Атоотступ и табстопы
set autoindent
set shiftwidth=4 " кол-во пробелов в tab. используется в <<, >>
set softtabstop=4 " ?? пробовать и изменить
set tabstop=4
"set expandtab
"set textwidth=78 " ?? не применяется или переопределяется
set formatoptions=qroct " ?? не применяется или переопределяется

" Folds
set foldmarker={{{,}}}
set foldmethod=marker


" Search
set incsearch 	" Показывает соответствие шаблону поиска во время набора шаблона.
set ignorecase 	" Не учитывает регистр при поиске 
set smartcase   "case-sensitive if search contains an uppercase character

"Строка статуса: режим, команда(надобранная), положение курсора в файле
set showmode
set showcmd
set ruler
set cmdheight=1 " Кол-во строк для коммандной строки
set statusline=%<%f%h%m%r%=%{&fileencoding}\ 0x%B\ \ %l,%c%V\ %P
set laststatus=2 " Всегда отображать строку статуса

" Меню Автодополнений Wild Menu 
set wildmenu                    " Включает меню автодополнений
set wildignore=*~,.svn*,*.bak   " Список исключений
"set wildmode=list,full          " Режим отображения вариантов
set wildcharm=<Tab>             " ??
"If you like tcsh's autolist completion, you can use the 'wildmode' option to
"	emulate it.  For example, this mimics autolist=ambiguous:
set wildmode=longest,list

set smarttab
set ruler

set tags=./tags
" The completion dictionary is provided by Rasmus:
" http://lerdorf.com/funclist.txt
" setlocal dictionary+=~/.vim/dic/funclist.txt
set dictionary+=~/.vim/dic/phpfunclist.txt
set dictionary+=~/.vim/dic/phpproto.txt
" Use the dictionary completion
set complete-=k complete+=k
