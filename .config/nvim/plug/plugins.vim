"##################################################
"
                    "Plugins
"
"##################################################

" Specify a directory for plugins
" call plug#begin to direct the autocmd to list of selected plugins
call plug#begin('~/.config/nvim/plug/plugged')

"                     Colors
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Plug 'vim-scripts/ScrollColors'

"                    Editor
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', {'do': { -> fzf#install()}}
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'voldikss/vim-floaterm'
"Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/remote', 'do': ':UpdateRemotePlugins' }
"                    Universal
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'liuchengxu/vim-which-key'

call plug#end()
