"##################################################
"
                    "Plugins
"
"##################################################

" Specify a directory for plugins
  " call plug#begin to direct the autocmd to list of selected plugins
call plug#begin('~/.config/nvim/plug/plugged')

"                    Editor
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Plug '907th/vim-auto-save'

"                    Universal
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
