" Set trailing whitespace color to light purple
let g:better_whitespace_guicolor = '#6272A4'

" Enable highlighting and stripping whitespace
let g:strip_whitespace_on_save = 1

" Disable confirmation prompt
let g:strip_whitespace_confirm = 0

" Strip white lines at the end of the file
let g:strip_whitelines_at_eof = 1

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
autocmd BufEnter * call ncm2#enable_for_buffer()

" Highlight python and self function
autocmd BufEnter * syntax match Type /\v\.[a-zA-Z0-9_]+\ze(\[|\s|$|,|\]|\)|\.|:)/hs=s+1
autocmd BufEnter * syntax match pythonFunction /\v[[:alnum:]_]+\ze(\s?\()/
hi def link pythonFunction Function
autocmd BufEnter * syn match Self "\(\W\|^\)\@<=self\(\.\)\@="
highlight self ctermfg=239

" Jedi vim settings
let g:jedi#auto_initialization = 1
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#smart_auto_mappings = 0
let g:jedi#popup_on_dot = 0
" let g:jedi#completions_command = ""
let g:jedi#show_call_signatures = "1"
let g:jedi#show_call_signatures_delay = 0
let g:jedi#use_tabs_not_buffers = 0
let g:jedi#show_call_signatures_modes = 'i'
let g:jedi#goto_command = "<C-j>"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>u"
let g:jedi#rename_command = "<leader>r"


" Impsort options
hi pythonImportedObject ctermfg=127
hi pythonImportedFuncDef ctermfg=127
hi pythonImportedClassDef ctermfg=127

" Reverse supertab mappings
let g:SuperTabMappingForward = '<s-tab>'
let g:SuperTabMappingBackward = '<tab>'

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
