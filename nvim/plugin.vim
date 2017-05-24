" vim-plug
call plug#begin('~/.config/nvim/plugged')

" color Scheme
Plug 'tomasr/molokai'
Plug 'vim-scripts/phd'
Plug 'altercation/vim-colors-solarized'
Plug 'w0ng/vim-hybrid'
Plug 'morhetz/gruvbox'

Plug 'junegunn/vim-easy-align'
Plug 'yggdroot/indentline'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'roxma/nvim-completion-manager'
"
Plug 'eugen0329/vim-esearch'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Plug 'ctrlpvim/ctrlp.vim'

Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'mileszs/ack.vim'

call plug#end()



" color scheme
"----------------------------------------
set background=dark
colorscheme hybrid
" colorscheme molokai
" let g:molokai_original = 1
"colorscheme solarized
"colorscheme PhD 



" easy align
" ---------------------------------------
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


" Indent line 
"-----------------------------------------	
let g:indentLine_char = '┊'
" let g:indentLine_char = '¦'
let indentLine_enabled = 0
nmap <Leader>i :IndentLinesToggle<CR>



"-------------airline setting--------------------
let g:airline_powerline_fonts = 1
let g:airline_detect_spell = 0
" nayaovim 使用airline的样式有点问题，目前的折中方案
let g:airline_left_sep='' 
let g:airline_right_sep='' 



" -------------nerdtree setting--------------
map <Leader>t :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
map <C-b> :NERDTreeToggle<CR>B

" -------------deoplete-------------------------
let g:deoplete#enable_at_startup = 1



" -------------ESearch-------------------------
let g:esearch = {
    \ 'adapter'    : 'rg',
    \ 'backend'    : 'nvim',
    \ 'out'        : 'win',
    \ 'batch_size' : 1000,
    \ 'use'        : ['visual', 'hlsearch', 'last'],
    \}




"------------goyo & limelight-----------------



"--------------fzf----------------------------
map <c-p> :Files<cr>
map <a-l> :Buffers<cr>
map <a-p> :History<cr>



" ack.vim
" --------------------------------------
if executable('rg')
  let g:ackprg = 'rg --vimgrep'
endif
let g:ackhighlight = 1
cnoreabbrev Ack Ack!
nnoremap <Leader>g :Ack!<Space>
