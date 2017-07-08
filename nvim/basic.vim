syntax enable

set mouse=a
set guicursor=n-v-c:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor

" 禁用python2 防止与3冲突
 let g:loaded_python_provider = 1
"set spell

"常用快捷键映射
vnoremap <Leader>y "+y
nmap <Leader>p "+p

map <C-s> :w<cr>
vmap <C-c>  y
vmap <C-x> x

nmap <silent> gb :bnext<CR>
nmap <silent> gB :bprevious<CR>
nmap <Leader>b 0
nmap <Leader>e $
noremap <silent> Y y$

nmap <Leader>q :q<CR>
nmap <Leader>w :w<CR>

nmap <Leader>M %

" 窗口间移动
nmap <silent> <C-h> <C-w>h
nmap <silent> <C-j> <C-w>j
nmap <silent> <C-k> <C-w>k
nmap <silent> <C-l> <C-w>l
nmap <silent> <left> <C-w>4<
nmap <silent> <right> <C-w>4>
nmap <silent> <up> <C-w>4-
nmap <silent> <down> <C-w>4+

"搜索设置
set ignorecase
nmap <silent> <Leader>c :nohl<CR>
command! C nohlsearch   " use :C to clear hlsearch
nmap <silent> <Leader>cl :nohl<CR>

set autoread

set nowrap
set lines=40 columns=120

set cursorline
set autoindent
set smartindent
set expandtab	 	" 将制表符扩展为空格
set tabstop=4		" 设置编辑时制表符占用空格数
set shiftwidth=4	" 设置格式化时制表符占用空格数
set softtabstop=4	" 让 vim 把连续数量的空格视为一个制表符
"autocmd Filetype javascript setlocal ts=2 sts=2 sw=2


set relativenumber
function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc
nnoremap <leader>n :call NumberToggle()<cr>

