"插件加载QAQ
call plug#begin()

"markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'dhruvasagar/vim-table-mode'

Plug 'lilydjwg/fcitx.vim'
Plug 'tpope/vim-unimpaired'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'easymotion/vim-easymotion'
Plug 'morhetz/gruvbox'
"code
Plug 'vim-test/vim-test'
"Plug 'Valloric/YouCompleteMe', {'do': 'python ./install.py --rust-completer'}

call plug#end()

" => 设置-----
syntax on
set background=dark    " Setting dark mode"
autocmd vimenter * ++nested colorscheme gruvbox
"colorscheme elflord
filetype plugin indent on 

set foldmethod=syntax
set directory=$HOME/.vim/swap//

set noautoindent 			"自动缩进
set expandtab 			"展开制表符
set tabstop=4
set shiftwidth=4

set laststatus=2
set wildmenu
set number
set hlsearch
set tags=tags;

let test#strategy = "vimterminal"
let g:airline#extensions#tabline#enabled = 1


autocmd BufWritePost *.rs silent! !ctags -R &
"autocmd VimEnter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"按键云云
let mapleader = "\<space>"
noremap <leader>w :w<cr>
"inoremap ' ''<esc>i
"inoremap \" \"\"<esc>i
"inoremap () ()<esc>i
"inoremap { {}<esc>i
"inoremap [ []<esc>i
"跳转到函数定义处
noremap <leader>] :YcmCompleter GoTo<cr>
noremap <leader>w :w<cr>
"缓冲区加载QAQ
"noremap <leader>1 :b1<cr>
"noremap <leader>2 :b2<cr>
"noremap <leader>3 :b3<cr>
"noremap <leader>4 :b4<cr>
"noremap <leader>5 :b5<cr>
"noremap <leader>6 :b6<cr>
"noremap <leader>7 :b7<cr>
"noremap <leader>8 :b8<cr>
"noremap <leader>9 :b9<cr>
