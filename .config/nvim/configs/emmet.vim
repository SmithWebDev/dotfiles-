" Emmet config
let g:user_emmet_leader_key=','
let g:user_emmet_mode='a'
let g:user_emmet_settings = {
      \ 'erb' : {
      \ 'extends' : 'html'},
      \ '*.erb' : {
      \ 'extends' : 'html'},
      \ 'ruby' : {
      \ 'extends' : 'html'},
      \ 'sass' : {
      \ 'extends' : 'css' },
      \ 'javascript' : {
      \ 'extends' : 'jsx' }
\}

nnoremap <silent> , :<c-u>WhichKey ','<CR>

"augroup EmmetSettings
"  autocmd! FileType * imap ,<space> <plug>(emmet-expand-abbr)
"augroup END
