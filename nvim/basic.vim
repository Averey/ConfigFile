syntax enable
set mouse=a

" 禁用python2 防止与3冲突
 let g:loaded_python_provider = 1

" 默认键位优化
nnoremap <silent> g; g;zz
nnoremap <silent> g, g,zz

xnoremap s :s//g<Left><Left>
noremap <silent> - <C-^>
noremap <Leader>b :buf<space>

"常用快捷键映射
noremap <C-s> :wa<CR>
noremap <Leader>y "+y
noremap <Leader>p "+p
nnoremap <silent> Y y$
nnoremap <Leader>q :q<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>m %
nnoremap B 0
nnoremap E $
inoremap <S-Enter> <esc>A;<Enter>

" 窗口设置
nnoremap <Leader>j <C-w>j
nnoremap <Leader>h <C-w>h
nnoremap <Leader>k <C-w>k
nnoremap <Leader>l <C-w>l
nnoremap <left> <C-w>4<
nnoremap <right> <C-w>4>
nnoremap <up> <C-w>4-
nnoremap <down> <C-w>4+
nnoremap <Leader>\ :vs<cr>
nnoremap <Leader>- :sp<cr>
set splitright "split to right by default 
set splitbelow "split to bottom by default
set cmdwinheight=10
set previewheight=8
set helpheight=12

"搜索设置
set ignorecase
nmap <silent> <Leader>c :noh<CR>

"set spell
set autoread
" set number
set hidden
set title
set titlelen=95
set report=0

" 展示设置
set expandtab	 	" 将制表符扩展为空格
set tabstop=4		" 设置编辑时制表符占用空格数
set shiftwidth=4	" 设置格式化时制表符占用空格数
set softtabstop=4	" 让 vim 把连续数量的空格视为一个制表符
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype css setlocal ts=2 sts=2 sw=2
autocmd Filetype scss setlocal ts=2 sts=2 sw=2
set nowrap
set cursorline
set autoindent
set smartindent
"set scrolloff=4     "4 lines above/below cursor when scrolling
set guicursor=n-v-c:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor


nnoremap <Tab> >>
nnoremap <S-Tab> <<
xnoremap <Tab> >gv
xnoremap <S-Tab> <gv


" Complete setting
" set complete=.      "Don't complete from other buffer.
set pumheight=20
set completeopt=menuone
set completeopt+=noinsert
set completeopt+=noselect
set completeopt-=preview
autocmd CompleteDone * pclose

inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
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


" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
  autocmd!
  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  autocmd BufReadPost *
    \ if line("'\"") >= 1 && line("'\"") <= line("$") |
    \   execute "normal! g`\"" |
    \ endif

augroup END

