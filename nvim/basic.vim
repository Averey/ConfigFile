"设置字体
autocmd VimEnter * :GuiFont DejaVu\ Sans\ Mono\ for\ Powerline:h12<cr>

set mouse=a
" 在不同模式使用不同的鼠标形状，期待已久的特性，终于在neovim里实现了
set guicursor=n-v-c:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor

"set spell

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

" 窗口间移动
nmap <silent> <C-h> <C-w>h
nmap <silent> <C-j> <C-w>j
nmap <silent> <C-k> <C-w>k
nmap <silent> <C-l> <C-w>l

"搜索设置
set ignorecase
nmap <silent> <Leader>c :nohl<CR>
command! C nohlsearch   " use :C to clear hlsearch



