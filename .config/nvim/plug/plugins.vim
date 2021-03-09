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
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'

"                    Universal
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'liuchengxu/vim-which-key'

call plug#end()
