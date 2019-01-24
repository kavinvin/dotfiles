" Enable bold fonts in dracula
let g:enable_bold_font = 1

" Use dracula color scheme
color dracula

" When shifting lines, round the indentation to the nearest multiple of shiftwidth
set shiftround 

" New lines inherit the indentation of previous lines
set autoindent 

" Use 4 spaces instead of tab
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab

" Enable line number
set relativenumber

" Enable GUI colors in terminal
set termguicolors

" Enable mouse
"set mouse=a

" position new pane below and on the right
set splitbelow
set splitright

" Use /bin/sh
set shell=/usr/local/bin/fish

" Disable vim mode status bar
set noshowmode

" Do not redraw while executing macros to improve performance
set lazyredraw

" Enable magic and no-magic character in regular expression
set magic

" Set directory to store swap files
set dir=~/.cache/vim
