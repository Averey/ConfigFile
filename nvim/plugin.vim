" vim-plug
call plug#begin('~/.config/nvim/plugged')

Plug 'tomasr/molokai'
Plug 'junegunn/vim-easy-align'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'roxma/nvim-completion-manager'


call plug#end()

"配色方案
"----------------------------
set background=dark
colorscheme molokai
let g:molokai_original = 1
"colorscheme solarized
"colorscheme PhD 



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
