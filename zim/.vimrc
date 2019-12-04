" ********************************************* "
"                                               "
"                      :|:|::|:|:||:|:::|:|||:  "
"  .vimrc              ||::|::||:||||::|||:::|  "
"                      |::::|::::::||||||:|:|:  "
"      ||||:| <||||:|>                          "
"                                               "
"  C20191204163730 ||||:|                       "
"  U20191204163734 ||:::|                       "
"                                               "
" ********************************************* "

" Mouse events
set mouse=a

" No auto wrapping
set nowrap

" Number line
set nu

" tabstops
set tabstop=4
set shiftwidth=4
set softtabstop=4

" syntax
syn on

" ruler on
set ruler

" highlight search
set hlsearch

" backspace compatibilities
set backspace=indent,eol,start

" obvious
set background=dark

" usefull
set encoding=utf-8

" autocompletion filenames with tab
set wildmenu

" obvious
set autoindent
set smartindent
set smarttab
set shiftround

" show last command on status bar
set showcmd

" show insert/command/visual mode
set showmode

" auto read when file changes outside
set autoread
" auto read will activate when entering insert mode:
:au InsertEnter * checktime
" the behavior above is not optimal and must me
" taken with attention.

" auto save and restores code folds between sessions
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

" local dirs
set backupdir=~/.vim/backups
set directory=~/.vim/swaps

set t_co=256 "256 colors terminal

if has('gui_running')
	let g:molokai_original=0
	colorscheme molokai

	"set guifont=Menlo:h13
	set gfn:Monaco:h13
	set transp=0
	set guioptions+=r
endif

set laststatus=2
set report=0 " show all changes
set showmode
set title

set wildchar=<TAB>
set wildmode=list:longest

set noerrorbells
set visualbell

set t_ut=
"fixes background error if &term =~ '256color'

" better tab navigation:
nnoremap <C-Left> :tabpreivous<CR>
nnoremap <C-Right> :tabnext<CR>

" tab navigation like firefox
nnoremap <C-S-tab>	:tabprevious<CR> 
nnoremap <C-tab>	:tabnext<CR>
nnoremap <C-t>		:tabnem<CR>
inoremap <C-S-tab>	<Esc>:tabprevious<CR>i
inoremap <C-tab>	<Esc>:tabnext<CR>i
inoremap <C-t>		<Esc>:tabnew<CR>

" o and O will not enter Insert Mode:
nnoremap o o<Esc>
nnoremap O O<Esc>


