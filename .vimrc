"插件加载
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
Plug 'Valloric/YouCompleteMe', {'do': 'python ./install.py'}
Plug 'voldikss/vim-translator'

call plug#end()

" => 设置-----
syntax on

autocmd vimenter * ++nested colorscheme gruvbox
"colorscheme elflord
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on 

set background=dark    " Setting dark mode"
set foldmethod=syntax
set directory=$HOME/.vim/swap//

set noautoindent 			"自动缩进
set expandtab 			"展开制表符
set tabstop=4
set shiftwidth=4
"set relativenumber 突出当前行号，并显示剩下行号与当前的距离
set number

set laststatus=2
set wildmenu " 提示！可选！命令
set hlsearch
set cursorline " 显示一条线or 高亮
"set nowrap "取消超过屏幕换行
set showcmd "在右下脚显示在干什么
set tags=tags;
set ignorecase "忽略大小写
set smartcase "智慧大小写 大只搜大 小 大小都搜
set pastetoggle=<F5> "粘贴模式

let test#strategy = "vimterminal"
let g:airline#extensions#tabline#enabled = 1
let g:fcitx5_remote = "/usr/bin/fcitx5-remote" "设置后端为remote?
let g:fcitx5_rime = 1

let g:mkdp_vrowserfunc= "katex"


autocmd BufWritePost *.rs silent! !ctags -R &
"autocmd VimEnter * NERDTree
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map tt :NERDTreeToggle<CR>
"按键云云

let mapleader = "\<space>" "设置导航按键 即space+w 用的那个
"let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"let &t_SR = "\<Esc>]50;CursorShape=2\x7"
"let &t_EI = "\<Esc>]50;CursorShape=0\x7"
"inoremap ' ''<esc>i
"inoremap \" \"\"<esc>i 
"inoremap () ()<esc>i
inoremap {} {}<esc>i
"inoremap [ []<esc>i
noremap <leader>t :TranslateW<cr>
"跳转到函数定义处
noremap <leader>] :YcmCompleter GoTo<cr>
noremap <leader>w :w<cr>
noremap <leader><CR> :nohlsearch<CR>
noremap <leader>r :!python <up><CR>
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
map <right> :vertical resize+5<CR>
map <left> :vertical resize-5<CR>
map <up> :res +5<CR>
map <down> :res -5<CR>
"tabe标签
