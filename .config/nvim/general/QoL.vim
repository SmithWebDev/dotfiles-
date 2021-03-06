"##################################################
"             Quality of Life Improvements
" "##################################################


"===============AutoSave===============
let g:auto_save = 1

"===============Map Leader===============
let g:mapleader = " "

"===============Colorscheme===============
"colorscheme abyss
"colorscheme tranquilityst
"colorscheme dark-meadow
"colorscheme tesla
"colorscheme maroloccio

"===============Transparent Background====
"hi Normal guibg=NONE ctermbg=NONE


"Allows mouse input in VIM window
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
set ma

" enable syntax amd plugins (netrw)
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
filetype plugin on
filetype indent on

"nnoremap <Space><Space> za
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
let g:spotify_token=$SPOTIFY

" Treat <li> and <p> tags like the block tags they are
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
let g:html_indent_tags = 'li\|p'


" Tab completion
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
" will insert tab at beginning of line,
" will use completion if not at beginning
"set wildmode=list:longest,list:full
"function! InsertTabWrapper()
"    let col = col('.') - 1
"    if !col || getline('.')[col - 1] !~ '\k'
"        return "\<Tab>"
"    else
"        return "\<C-p>"
"    endif
"endfunction
"inoremap <Tab> <C-r>=InsertTabWrapper()<CR>
"inoremap <S-Tab> <C-n>

set tags=./tags;

set scrolloff=999

"sets the use of :E to create newfile and  directory  
"ex. :E spec/models/blog_spec.rb
"command -nargs=1 Dir execute('silent! !mkdir -p "$(dirname "<args>")"') <Bar> e <args>

"Create file under cursor, file does not currently exist
map <leader>cf :e <cfile><cr>
"map <silent> <leader>cf :call writefile([], expand("<cfile>"), "t")<cr>"

autocmd FileType json syntax match Comment +\/\/.\+$+


command! WipeReg for i in range(34,122) | silent! call setreg(nr2char(i), []) | endfor
"autocmd VimEnter * WipeReg



"function! SetupCommandAbbrs(from, to)
"  exec 'cnoreabbrev <expr> '.a:from
"        \ .' ((getcmdtype() ==# ":" && getcmdline() ==# "'.a:from.'")'
"        \ .'? ("'.a:to.'") : ("'.a:from.'"))'
"endfunction
"
"" Use C to open coc config
"call SetupCommandAbbrs('C', 'CocConfig')



"===============Set FileType===============
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx

