syntax enable

set mouse=a

" 禁用python2 防止与3冲突
 let g:loaded_python_provider = 1
"set spell

" 默认键位优化
nnoremap <silent> g; g;zz
nnoremap <silent> g, g,zz

"常用快捷键映射
vnoremap <Leader>y "+y
nmap <Leader>p "+p

map <C-s> :w<cr>
vmap <C-c>  y
vmap <C-x> x
map <silent> <C-a> <esc>ggVG<CR>

nmap <silent> gb :bnext<CR>
nmap <silent> gB :bprevious<CR>
nmap <Leader>b 0
nmap <Leader>e $
noremap <silent> Y y$

nmap <Leader>q :q<CR>
nmap <Leader>w :w<CR>

nmap <Leader>M %

" 窗口设置
nmap <silent> <C-h> <C-w>h
nmap <silent> <C-j> <C-w>j
nmap <silent> <C-k> <C-w>k
nmap <silent> <C-l> <C-w>l
nmap <silent> <left> <C-w>4<
nmap <silent> <right> <C-w>4>
nmap <silent> <up> <C-w>4-
nmap <silent> <down> <C-w>4+
nnoremap <Leader>\ :vs<cr>
nnoremap <Leader>- :sp<cr>

"搜索设置
set ignorecase
nmap <silent> <Leader>c :nohl<CR>
command! C nohlsearch   " use :C to clear hlsearch
nmap <silent> <Leader>cl :nohl<CR>

set autoread

" 展示设置
set expandtab	 	" 将制表符扩展为空格
set tabstop=4		" 设置编辑时制表符占用空格数
set shiftwidth=4	" 设置格式化时制表符占用空格数
set softtabstop=4	" 让 vim 把连续数量的空格视为一个制表符
set nowrap
set cursorline
set autoindent
set smartindent
set lines=40 columns=120
set scrolloff=4     "4 lines above/below cursor when scrolling
set guicursor=n-v-c:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor


set relativenumber
function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    "set relativenumber
  endif
endfunc
""nnoremap <leader>n :call NumberToggle()<cr>

"智能tab补全
function! Tab_Or_Complete()
    let currentLine = getline('.')
    let currentColumn= col('.')
    let beforeChar = strpart(currentLine, currentColumn-2, 1)
    let res = match(beforeChar, ' ')

    if(res == -1 && currentColumn > 1)
        return "\<C-N>"
    else
        return "\<tab>"
    endif
endfunction
inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
inoremap <S-Tab> <C-p>

