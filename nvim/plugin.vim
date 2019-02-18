﻿" vim-plug
call plug#begin('~/.config/nvim/plugged')

" color Scheme
Plug 'joshdick/onedark.vim'
Plug 'rakr/vim-one'
Plug 'mhartington/oceanic-next'
Plug 'morhetz/gruvbox'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'ayu-theme/ayu-vim'

" complete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'zchee/deoplete-jedi'
"Plug 'roxma/nvim-completion-manager'
"Plug 'roxma/nvim-cm-tern',  {'do': 'npm install'}


" Plug 'justinmk/vim-dirvish'
Plug 'junegunn/vim-easy-align'
Plug 'yggdroot/indentline'
"Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'tpope/vim-fugitive'
"Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'


Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'jiangmiao/auto-pairs'
"Plug 'w0rp/ale'
Plug 'mhinz/vim-startify'
Plug 'junegunn/goyo.vim', {'for': 'markdown'}

Plug 'sheerun/vim-polyglot' 
Plug 'mxw/vim-jsx'

Plug 'justinmk/vim-highlightedyank'

Plug '~/potion'

call plug#end()


" color scheme
"----------------------------------------
if (has("termguicolors"))
   set termguicolors
endif

colorscheme palenight
set background=dark

" easy align
" ---------------------------------------
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


" Indent line 
"-----------------------------------------	
let g:indentLine_char = '┊'
let indentLine_enabled = 0
nmap <Leader>i :IndentLinesToggle<CR>


"-------------nerdtree setting--------------
map <Leader>t :NERDTreeToggle<CR>
map <Leader>d :NERDTreeFind<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowBookmarks=1
let NERDTreeIgnore = ['node_modules$[[dir]]']
let g:NERDTreeWinSize = 30

" -------------deoplete-------------------------
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#ternjs#types = 1
let g:deoplete#enable_refresh_always= 1
" deoplete-ternjs
let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = '0'  " This do disable full signature type on autocomplete
let g:deoplete#sources#ternjs#filetypes = [
                \ 'jsx',
                \ 'js',
                \ 'javascript.jsx',
                \ 'vue'
                \]


"--------------fzf----------------------------
set rtp+=~/.fzf
map <c-p> :Files<cr>
map <a-l> :Buffers<cr>
map <a-h> :History:<cr>
"Files command with preview window
" command! -bang -nargs=? -complete=dir Files
"   \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

" ack.vim
" --------------------------------------
if executable('rg')
  let g:ackprg = 'rg --vimgrep'
endif
let g:ackhighlight = 1
cnoreabbrev Ack Ack!
nnoremap <Leader>g :Ack!<Space>
nnoremap # :Ack! <C-r><c-w><cr>

" ultisnips
" ---------------------------------------------
set rtp+=~/repo/ConfigFile
let g:UltiSnipsExpandTrigger="<S-tab>"
let g:UltiSnipsJumpForwardTrigger="\\"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir = GitRepo . 'mySnips'
let g:UltiSnipsSnippetDirectories=["UltiSnips", "mySnips"]

" ale
" ----------------------------------------
let g:ale_javascript_eslint_executable = 'eslint'
let g:ale_javascript_eslint_use_global = 1
let g:ale_sign_error = '×'
let g:ale_sign_warning = '▌'
"let g:ale_sign_warning = '⋯'
"let g:ale_sign_warning = '░'
