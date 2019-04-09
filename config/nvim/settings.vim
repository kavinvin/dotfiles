" Set trailing whitespace color to light purple
let g:better_whitespace_guicolor='#6272A4'

" Enable highlighting and stripping whitespace
let g:strip_whitespace_on_save=1

" Strip white lines at the end of the file
let g:strip_whitelines_at_eof=1

" Show spaces that precede tab
let g:show_spaces_that_precede_tabs=1

" Enable auto save
let g:auto_save = 0
let g:auto_save_silent = 0
let g:auto_save_in_insert_mode = 0

" Set move key to use alt + [jkhl]
let g:move_key_modifier = 'A'

" CSV rainbow color
let yellow = ['NONE', '#f1fa8c']
let orange = ['NONE', '#ffb86c']
let red = ['NONE', '#ff8888']
let pink = ['NONE', '#ff89d6']
let purple = ['NONE', '#a298fd']
let cyan = ['NONE', '#8be9fd']
let green = ['NONE', '#50fa7b']
let white = ['NONE', '#f8f8f2']
let g:rcsv_colorpairs = [yellow, orange, red, pink, purple, cyan, green, white]

" Set python interpreter for language server
let g:python_host_prog = '/Users/kavinvin/.virtualenvs/nvim/bin/python'
let g:python3_host_prog = '/Users/kavinvin/.virtualenvs/nvim/bin/python3'

" Enable ncm2 for all buffers
" autocmd BufEnter * call ncm2#enable_for_buffer()

" Reverse supertab mappings
" let g:SuperTabMappingForward = '<s-tab>'
" let g:SuperTabMappingBackward = '<tab>'

" Language client
" set hidden
" set rtp+=~/.local/share/nvim/plugged/LanguageClient-neovim
" let g:LanguageClient_serverCommands = { 'haskell': ['hie-wrapper'] }
" nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" map <Leader>lk :call LanguageClient#textDocument_hover()<CR>
" map <Leader>lg :call LanguageClient#textDocument_definition()<CR>
" map <Leader>lr :call LanguageClient#textDocument_rename()<CR>
" map <Leader>lf :call LanguageClient#textDocument_formatting()<CR>
" map <Leader>lb :call LanguageClient#textDocument_references()<CR>
" map <Leader>la :call LanguageClient#textDocument_codeAction()<CR>
" map <Leader>ls :call LanguageClient#textDocument_documentSymbol()<CR>
" hi link ALEError Error
" hi Warning term=underline cterm=underline ctermfg=Yellow gui=undercurl guisp=Gold
" hi link ALEWarning Warning
" hi link ALEInfo SpellCap
" let g:LanguageClient_rootMarkers = ['*.cabal', 'stack.yaml']
