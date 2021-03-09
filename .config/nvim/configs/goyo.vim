"nmap <leader><leader>g :Goyo <CR>
"let g:goyo_width = '30%'
"function! s:goyo_enter()
"  if has('gui_running')
"    set nu rnu
"    set fullscreen
"    set background=light
"    set linespace=7
"  elseif exists('$TMUX')
"    silent !tmux set status off
"  endif
"endfunction
"
"function! s:goyo_leave()
"  if has('gui_running')
"    set nofullscreen
"    set background=dark
"    set linespace=0
"  elseif exists('$TMUX')
"    silent !tmux set status on
"  endif
"endfunction
"
"autocmd! User GoyoEnter nested call <SID>goyo_enter()
"autocmd! User GoyoLeave nested call <SID>goyo_leave()


function! s:goyo_enter()
  silent !tmux set status off
  silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  set noshowmode
  set rnu
  set noshowcmd
  set scrolloff=999
  Limelight
  " ...
endfunction

function! s:goyo_leave()
  silent !tmux set status on
  silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  set showmode
  set showcmd
  set scrolloff=5
  Limelight!
  " ...
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()


" For use with Vim Which Key plugin
"let g:which_key_map['z'] = [ 'Goyo'  , 'zen' ]
