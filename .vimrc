set nocp

let sys = "linux"
if has("macunix")
	sys = "mac"
elseif has("win16") || has("win32") || has("win64") || has("win95")
	sys = "windows"
endif

"Vundle
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" syntax check
Plugin 'scrooloose/syntastic'
if sys == "linux"
	" auto complete
	Plugin 'Valloric/YouCompleteMe'
	" js auto complete
	Plugin 'marijnh/tern_for_vim'
endif
" mdk
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
" js syntax highlighting
Plugin 'vim-scripts/JavaScript-syntax'
" ts syntax highlighting
Plugin 'leafgarland/typescript-vim'
" log file syntax highlighting
Plugin 'dzeban/vim-log-syntax'
call vundle#end()            " required

"visual
set ruler
set number
set ts=4
set sw=4
"set expandtab
set sts=4
set autoindent
set smartindent
"set cindent
syntax on
filetype plugin indent on
"colo desert
"show tab and blank in line end
set list
set listchars=tab:\>\ ,trail:-

"serarch
set hlsearch
set incsearch
set ignorecase
set smartcase

"encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

"foldmethod
set fdm=syntax
set foldlevelstart=99
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>


"tags
set tags+=./tags,../tags,../../tags,../../../tags
set tags+=~/.vim/systags
set autochdir

"copy/paste
map ty :w! ~/.vimxfer<cr>
map tp :r ~/.vimxfer<cr>

" syntastic
let g:syntastic_javascript_checkers = ['jshint']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" YouCompleteMe
set completeopt-=preview

" matchit
runtime macros/matchit.vim

" gf command
set suffixesadd+=.js
set suffixesadd+=.json
