" **************************************************************************** "
"                                                                              "
"                                                         :::      ::::::::    "
"    .vimrc                                             :+:      :+:    :+:    "
"                                                     +:+ +:+         +:+      "
"    By: fde-capu <fde-capu@student.42sp.org.br>    +#+  +:+       +#+         "
"                                                 +#+#+#+#+#+   +#+            "
"    Created: 2020/03/23 21:46:15 by fde-capu          #+#    #+#              "
"    Updated: 2020/04/19 00:27:55 by fde-capu         ###   ########.fr        "
"                                                                              "
" **************************************************************************** "

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

" uses pathogen plugin manager
"execute pathogen#infect()

" syntax
syn on

" ruler on
set ruler

" highlight search
set hlsearch

" backspace compatibilities
set backspace=indent,eol,start

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
"set autoread
" auto read will activate when entering insert mode:
":au InsertEnter * checktime
" the behavior above is not optimal and must be
" taken with attention.

" auto save and restores code folds between sessions
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

" transparent background
hi Normal guibg=NONE ctermbg=NONE

" local dirs (be sure of creating them)
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set undodir=~/.vim/undodir

"if has('gui_running')
"	let g:molokai_original=0
"#	colorscheme molokai
"#
"#	"set guifont=Menlo:h13
"#	set gfn:Monaco:h13
"#	set transp=0
"#	set guioptions+=r
"#endif

"set laststatus=2
set report=0 " show all changes
"set showmode
"set title

set wildchar=<TAB>
set wildmode=list:longest

set noerrorbells
set visualbell

"set t_ut=
"fixes background error if &term =~ '256color'

" better tab navigation:
"nnoremap <C-Left> :tabpreivous<CR>
"nnoremap <C-Right> :tabnext<CR>

" tab navigation like firefox
"nnoremap <C-S-tab>	:tabprevious<CR> 
"nnoremap <C-tab>	:tabnext<CR>
"nnoremap <C-t>		:tabnem<CR>
"inoremap <C-S-tab>	<Esc>:tabprevious<CR>i
"inoremap <C-tab>	<Esc>:tabnext<CR>i
"inoremap <C-t>		<Esc>:tabnew<CR>

" ignores opened files
"set hidden

" my version of 'put' without moving the cursor using Pu
" as in my question at SE Vi an Vim Beta
command! -bar -bang -range -register Put call append(<line2> - <bang>0, getreg(<q-reg>, 1, 1))

" autosave whenever buffer is switched
"set autowriteall

" autosave when window looses focus
"au FocusLost * :wa

" makes `:sb filename` usefull to swich splits by typing filename (w/ autocomplete!)
" from stackoverflow 5305137     
set switchbuf +=useopen
 
 " spelling check ([s and s] moves, z= list, 1z= get first from list)
" :set spell

" uses dracula
"colorscheme dracula "old Windows method
"call plug#begin()	"lines below run just once
"Plug 'dracula/vim', {'as': 'dracula'}
":PlugInstall
"call plug#end()

" but with custom:
":highlight Normal ctermbg=0

" change current directory to the one the current buffer is
set autochdir

" persistent undo history
set undofile

" clear split backgrounds
highlight VertSplit cterm=NONE

" follow the file path
set autochdir

" set some colors
"colorscheme succubus
colorscheme _bg
"set StatusLineNC ctermfg=232 ctermbg=68
"set StatusLine ctermfg=232 ctermbg=75

" auto detect file changes
set autoread
