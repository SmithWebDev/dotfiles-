" ================ AUTOCMDs ===========================
"
" set 'updatetime' to 15 seconds when in insert mode
"au CursorHoldI * stopinsert
au InsertEnter * let updaterestore=&updatetime | set updatetime=1000
au InsertLeave * let &updatetime=updaterestore


au TextChanged,TextChangedI * silent execute ':write %'
au! BufWritePost $VIMC/init.vim source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
"
"
autocmd BufWritePre * call MkDir()

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
