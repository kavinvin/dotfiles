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
