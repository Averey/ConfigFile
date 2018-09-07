"智能tab补全
inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
function! Tab_Or_Complete()
    let currentLine = getline('.')
    let currentColumn= col('.')
    let beforeChar = strpart(currentLine, currentColumn-2, 1)
    let res = match(beforeChar, ' ')
                                                
    if(res == -1 && currentColumn > 1)
        return "\<C-N>"
    else
        return "\<Tab>"
    endif
endfunction

" netrw setting
" map <Leader>t :Lexplore<CR>
" let g:netrw_liststyle=3 "tree style
" let g:netrw_browse_split=2
let g:netrw_winsize=15
let g:netrw_banner=0
let g:netrw_list_hide='node_modules,^\./$,^\../$'
let g:netrw_hide=1
nnoremap <Leader>d :Explore<CR>
augroup custom_netrw
    autocmd!
    autocmd Filetype netrw nnoremap <buffer> <Esc> :Rex<Cr>
augroup end



" terminal setting
tnoremap <Esc> <C-\><C-n>

" 默认的重绘导致输入时有卡顿
set lazyredraw
set hidden 
set mouse=a
let g:did_install_default_menus = 1 " avoid useless menu.vim (saves ~100ms ?)

" auto center(默认键位优化
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz
nnoremap <silent> g# g#zz
nnoremap <silent> <C-o> <C-o>zz
nnoremap <silent> <C-i> <C-i>zz
nnoremap <silent> g; g;zz
nnoremap <silent> g, g,zz

xnoremap s :s//g<Left><Left>
noremap <silent> - <C-^>
noremap <Leader>b :buf<space>

" Improve up/down movement on wrapped lines 
nnoremap j gj
nnoremap k gk

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


nnoremap <C-j> <C-w>j
nnoremap <C-h> <C-w>h
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
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

" set spell
set autoread
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
set smartindent
set guicursor=n-v-c:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor


nnoremap <Tab> >>
nnoremap <S-Tab> <<
xnoremap <Tab> >gv
xnoremap <S-Tab> <gv


" Complete setting
set pumheight=20
set completeopt=menuone
set completeopt+=noinsert
set completeopt+=noselect
set completeopt-=preview
autocmd CompleteDone * pclose

" nnoremap <space>; :execute 'normal! mqA;\<esc>`q'
nnoremap <space>;  mqA;<esc>`q
nnoremap <space>,  mqA,<esc>`q
nnoremap <space>:  mqA:<esc>`q
inoremap <S-Enter> <esc>A;<Enter>

" reselect last paste
nnoremap <expr> sp '`[' . strpart(getregtype(), 0, 1) . '`]'


" custom statusline
function! GitBranch() abort
    return fugitive#head();
    " let l:branchname =  fugitive#statusline();
    " return l:branchname;
    "let l:branchname = system('git rev-parse --abbrev-ref HEAD') 2>/dev/null;
    " return strlen(l:branchname) > 0 ? ' '.l:branchname.' ':'';
endfunction
set laststatus=2
set statusline=
set statusline+=%{fugitive#statusline()}
set statusline+=\ %t    " filename
" set statusline+=%y    " filetype
set statusline+=%=      " switch to the right side
set statusline+=\[%{&fileencoding?&fileencoding:&encoding}\] "encoding
set statusline+=\ %l      " current line number
set statusline+=/       
set statusline+=%L      "total line
set statusline+=(%p%%)      "total line


" abbreviate

" open h buffer vertically
ca h vert h

" word correct
ab dvi div
