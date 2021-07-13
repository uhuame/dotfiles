"插件加载QAQ
call plug#begin()

Plug 'vim-test/vim-test'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'easymotion/vim-easymotion'
Plug 'Valloric/YouCompleteMe', {'do': './install.py --rust-completer'}

call plug#end()

"设置？
syntax on
colorscheme elflord

"set background=dark
set tags=tags;
set foldmethod=syntax
set directory=$HOME/.vim/swap//
set laststatus=2
set wildmenu
set number
set hlsearch

let test#strategy = "vimterminal"
let g:airline#extensions#tabline#enabled = 1


"autocmd BufWritePost *.rs silent! !ctags -R &
"autocmd VimEnter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"按键云云
let mapleader = "\<space>"
noremap <leader>w :w<cr>
inoremap ' ''<esc>i
inoremap " ""<esc>i
inoremap ( ()<esc>i
inoremap { {}<esc>i
inoremap [ []<esc>i
"跳转到函数定义处
noremap <leader>] :YcmCompleter GoTo<cr>
noremap <leader>w :w<cr>
"缓冲区加载QAQ
noremap <leader>b1 :b1<cr>
noremap <leader>b2 :b2<cr>
noremap <leader>b3 :b3<cr>
noremap <leader>b4 :b4<cr>
noremap <leader>b5 :b5<cr>
noremap <leader>b6 :b6<cr>
noremap <leader>b7 :b7<cr>
noremap <leader>b8 :b8<cr>
noremap <leader>b9 :b9<cr>
