" Source $VIMC files
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
let g:which_key_map.v = { 'name' : +'vim file system' }
nnoremap <leader>vf :so %<CR>
nnoremap <leader>vc :e $VIMC/configs<CR>
nnoremap <leader>vd :so $VIMC/init.vim<CR>
nnoremap <leader>vm :e $VIMC/keymap<CR>

" Simpler way to exit Insert Mode
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
inoremap jj <Esc>
"inoremap kj <Esc>

" Alternative selection trigger
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
inoremap jk <C-g>u

" Better window navigation
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-m> <C-w>_<C-w>\|
nnoremap <C-=> <C-w>=


nnoremap <leader>\| <C-w>\|
nnoremap <leader>_ <C-w>_
nnoremap <leader>\ <C-w>v
nnoremap <leader>- <C-w>s
nnoremap <leader>q <C-w>q

" Better tabbing
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
vnoremap < <gv
vnoremap > >gv

"Create file under cursor, file does not currently exist
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
map <leader>cf :e <cfile><cr>

" VIM tabs
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

let g:which_key_map.t = { 'name' : '+tabs' }
nnoremap <leader>t= :-tabm<CR>
nnoremap <leader>t- :+tabm<CR>
nnoremap <leader>tf :tabedit %<CR>
nnoremap <leader>th :tabfirst<CR>
nnoremap <leader>tj :tabprev<CR>
nnoremap <leader>tk :tabnext<CR>
nnoremap <leader>tl :tablast<CR>
nnoremap <leader>tn :tabnew<Space>
nnoremap <leader>tt :tabs<CR>


" Better nav for omnicomplete
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
"inoremap <expr> <C-j> ("\<C-n>")
"inoremap <expr> <C-k> ("\<C-p>")
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr><Space> pumvisible() ? "\<C-g> u" : "\<Space>"


" Custom & Extended Function map
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
nnoremap <silent> <Leader>' :call ToggleZoom(v:true)<CR>
"vnoremap <silent> i/ :<c-u>call SelectMatch()<cr>
"onoremap <silent> i/ :call SelectMatch()<cr>





" Search for term under cursor
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
nnoremap <Leader><Leader>sw :%s/\<<C-r><C-w>\>/
nnoremap <Leader><Leader>s :%s/\<<C-r><C-W>\>/





"====================Rails Maps====================
let g:which_key_map.r = {'name' : '+Rails',
      \'D': [':Destroy' , 'Rails destroy'],
      \'E': [':Extract' , 'Extract selected to partial'],
      \'R': [':Rake' , 'Run Related Test in Editor'],
      \'T': [':Tags<cr>' , 'Call CTags'],
      \}


map <leader>re :e <C-R>=expand("%:p:h") . '/' <CR>
map <leader>rs :split <C-R>=expand("%:p:h") . '/' <CR>
map <leader>rv :vnew <C-R>=expand("%:p:h") . '/' <CR>

nnoremap <silent> <leader>rgc :Generate controller
nnoremap <silent> <leader>rgdi :Generate devise:install<CR>
nnoremap <silent> <leader>rgdu :Generate devise user<CR>
nnoremap <silent> <leader>rgdv :Generate devise:views<CR>
nnoremap <silent> <leader>rgma :Generate mailer
nnoremap <silent> <leader>rgmi :Generate migration
nnoremap <silent> <leader>rgmo :Generate model
nnoremap <silent> <leader>rgre :Generate resource
nnoremap <silent> <leader>rgrs :Generate rspec
nnoremap <silent> <leader>rgs :Generate scaffold
"
"nnoremap <silent> <leader>rc :e $CONTROLLERS<cr>
"nnoremap <silent> <leader>r-c :sp $CONTROLLERS<cr>
"nnoremap <silent> <leader>r\c :vsp $CONTROLLERS<cr>
"nnoremap <silent> <leader>rc :e $CONTROLLERS<cr>
"nnoremap <silent> <leader>r-c :sp $CONTROLLERS<cr>
"nnoremap <silent> <leader>r\c :vsp $CONTROLLERS<cr>
"nnoremap <silent> <leader>rc :e $CONTROLLERS<cr>
"nnoremap <silent> <leader>rc- :sp $CONTROLLERS<cr>
"nnoremap <silent> <leader>rc\ :vsp $CONTROLLERS<cr>
"nnoremap <silent> <leader>rm :e $MODELS<cr>
"nnoremap <silent> <leader>rm- :sp $MODELS<cr>
"nnoremap <silent> <leader>rm\ :vsp $MODELS<cr>
"nnoremap <silent> <leader>rv :e $VIEWS<cr>
"nnoremap <silent> <leader>rv- :sp $VIEWS<cr>
"nnoremap <silent> <leader>rv\ :vsp $VIEWS<cr>

let g:which_key_map.R = {'name' : '+Rspec',
      \'a': [':RunAllSpecs()<CR>', 'Run All Spec Files'],
      \'l': [':RunLastSpec()<CR>', 'Run Nearest Spec File'],
      \'s': [':RunNearestSpec()<CR>', 'Run Nearest Spec File'],
      \'t': [':RunCurrentSpecFile()<CR>', 'Run Current Spec File']
      \}

map <Leader>Rt :call RunCurrentSpecFile()<CR>
map <Leader>Rs :call RunNearestSpec()<CR>
map <Leader>Rl :call RunLastSpec()<CR>
map <Leader>Ra :call RunAllSpecs()<CR>

"     PopUp Menu
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
"inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
"inoremap <expr><Space> pumvisible() ? "\<C-g> u" : "\<Space>"
