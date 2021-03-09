" Emmet config
let g:user_emmet_leader_key=','
let g:user_emmet_mode='a'
let g:user_emmet_settings = {
      \ 'erb' : {
      \ 'extends' : 'html'},
      \ 'sass' : {
      \ 'extends' : 'css' },
      \ 'javascript' : {
      \ 'extends' : 'jsx' }
\}

nnoremap <silent> , :<c-u>WhichKey ','<CR>

