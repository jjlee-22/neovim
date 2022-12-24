"""""""""""""""""""""""""""""""""""""""""""""""""
" Default Settings
"""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4
set number

"""""""""""""""""""""""""""""""""""""""""""""""""
" Vim-Plug Settings
"""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.local/share/nvim/site/plugged')

" Color theme plugins
Plug 'joshdick/onedark.vim'

" UI Plugins
Plug 'vim-airline/vim-airline'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

" Syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Linter
Plug 'dense-analysis/ale'

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""
" Custom Keybindings
"""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""
" Theme Settings
"""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
colorscheme onedark

"""""""""""""""""""""""""""""""""""""""""""""""""
" UI Settings
"""""""""""""""""""""""""""""""""""""""""""""""""
" Goyo
let g:goyo_width=50
let g:goyo_height=85

" LimeLight
let g:limelight_conceal_ctermfg = 'grey'
let g:limelight_conceal_ctermfg = 240

let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" highlight line
" let g:limelight_bop = '^.*$'
let g:limelight_paragraph_span = 0

" Goyo and Limelight
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

"""""""""""""""""""""""""""""""""""""""""""""""""
" Error Checking Settings
"""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#ale#enabled = 1
