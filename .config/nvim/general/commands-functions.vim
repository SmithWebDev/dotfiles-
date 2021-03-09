" ================ AUTOCMDs ===========================
"
" set 'updatetime' to 5 seconds when in insert mode
au CursorHoldI * stopinsert
au InsertEnter * let updaterestore=&updatetime | set updatetime=5000
au InsertLeave * let &updatetime=updaterestore


" autocmd group for autosave 
augroup autosave
    autocmd!
    autocmd BufRead * if &filetype == "" | setlocal ft=text | endif
    "autocmd FileType * autocmd TextChanged,InsertLeave <buffer> if &readonly == 0 | silent execute ':write %' | endif
    autocmd TextChanged,InsertLeave * if &readonly == 0 | silent w | endif
augroup END

" set 'MkDir' to create dir if it does not already exist
autocmd BufWritePre * call MkDir()


" ================ AU Graveyard ===========================
"au TextChanged,TextChangedI * silent execute ':write %'


" ================ Functions ===========================

" Auto magically Mkdir
" ====================
" Conditionaly create the parent directory when writing to disk
" <afile> refers to the file we are saving
" :p is a modifier that expands to full filename
" :h is a modifier that removes the file from full filename
" :t is a modifier that generates the filename with extension
" 'p' is the flag that will create all the parent directories
function! MkDir()
   if !isdirectory(expand("<afile>:p:h"))
      let confirmation=confirm("Create a new directory?", "&Yes\n&No")
      if confirmation == 1
         call mkdir(expand("<afile>:p:h"), "p")
         lcd %:p:h
         saveas %:t
         echom "Created a new directory:" expand("<afile>:p:h")
         let buf_del = bufnr("$")
         exe "bd" . buf_del
      endif
      redraw
   endif
endfunction

function! ToggleZoom(zoom)
  if exists("t:restore_zoom") && (a:zoom == v:true || t:restore_zoom.win != winnr())
      exec t:restore_zoom.cmd
      unlet t:restore_zoom
  elseif a:zoom
      let t:restore_zoom = { 'win': winnr(), 'cmd': winrestcmd() }
      exec "normal \<C-W>\|\<C-W>_"
  endif
endfunction

augroup restorezoom
    au WinEnter * silent! :call ToggleZoom(v:false)
augroup END
