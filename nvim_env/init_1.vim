set encoding=utf-8
set number relativenumber
syntax enable
set noswapfile
set scrolloff=7
set backspace=indent,eol,start

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix

let mapleader = ' '

call plug#begin('~/.vim/plugged')

"color scheme,  keep colors easily distinguishable, contrast enough and still pleasant for the eyes.
Plug 'morhetz/gruvbox'
" Insert or delete brackets, parens, quotes in pair.
Plug 'jiangmiao/auto-pairs'
" The NERDTree is a file system explorer for the Vim editor.
" Open NERDTree with the :NERDTree command
Plug 'scrooloose/nerdtree'
"Comment functions so powerful—no comment necessary.
Plug 'preservim/nerdcommenter'
" A high-performance color highlighter for Neovim which has no external dependencies! Written in performant Luajit.
Plug 'norcalli/nvim-colorizer.lua'
" Lean & mean status/tabline for vim that's light as air.
Plug 'vim-airline/vim-airline'
" his is the official theme repository for vim-airline
Plug 'vim-airline/vim-airline-themes'
" UltiSnips is the ultimate solution for snippets in Vim. It has many features, speed being one of them
Plug 'sirver/ultisnips'


call plug#end()

colorscheme gruvbox

let g:airline_theme='gruvbox'

if (has('termguicolors'))
	set termguicolors
endif

lua require 'colorizer'.setup()

nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv

" NERDTree
let NERDTreeQuitOnOpen=1
let g:NERDTreeMinimalUI=1
nmap <F2> :NERDTreeToggle<CR>

" Tabs
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemode=':t'
nmap <leader>1 :bp<CR>
nmap <leader>2 :bn<CR>
nmap <C-w>:bd<CR>

" Untinips
" create directory to save snippet mkdir ~/.config/nvim/ultisnips
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/ultisnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

