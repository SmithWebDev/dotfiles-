"==============================
"     Standard Settings
"==============================

"===============Map Leader===============
let g:mapleader = " "

" enable syntax amd plugins (netrw)
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
filetype plugin indent on

"===============COLORS===============
syntax on   "turns on code syntax highlighting
set termguicolors  "Allows for hex colors
set t_Co=256

"===============Mouse Input===============
set mouse=a

"===============NUMBERING===============
set rnu  "show relative line numbers

"===============EDITING===============
set list listchars=tab:→\ ,trail:·,extends:…,eol:↩  "Displays tabs and trailing spaces visually
"set tw=120   "Maximum width of test that is being inserted
set ar   "Reloads file when changed outside of VIM
set noro
au CursorHold * checktime
set aw awa   "Writes the contents of file is it has been modified
set spr  "Places new window to the right of current window
set sb  "Places new buffer below the current buffer
set clipboard=unnamedplus   " Allows system clipboard to be used with vim
set noswapfile
set hidden                              " Required to keep multiple buffers open multiple buffers
set pb=25


    " **************** Folds ****************************
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default
set foldlevel=99

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
    " **************** Persistent Undo ******************
  " Keep undo history across sessions, by storing in file.
" Only works all the time.
if has('persistent_undo') && !isdirectory(expand('~').'/.config/nvim/backups')
silent !mkdir ~/.config/nvim/backups > /dev/null 2>&1
set undodir=~/.config/nvim/backups
set undofile
endif

" ================ Scrolling ========================

set scrolloff=999         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Search ===========================

set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital
set path+=**  "Search into subfolders
set wmnu     "Enhanced command line completion
set tags=./tags;

"===============MISC===============
set ru  "Show the line and column number of the cursor position
set noeb   "Turns off sound when you hit end wall or line
"set updatetime=300

"===============Transparent Background====
hi Normal guibg=NONE ctermbg=NONE

" ================ WINDOW ===========================
set pumheight=10   " Makes popup window smaller
set cmdheight=2    " Give more space for displaying messages.
"set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc


