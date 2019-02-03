call plug#begin('~/.local/share/nvim/plugged')

" Fuzzy Finder
Plug '/usr/local/opt/fzf'

" Thai keys mapping
Plug 'chakrit/vim-thai-keys'

" Dracula theme
Plug 'dracula/vim', { 'as': 'dracula' }

" Fish syntax
Plug 'dag/vim-fish'

" Better status bar
Plug 'vim-airline/vim-airline'

" Rainbow color csv
Plug 'mechatroner/rainbow_csv'

" Highlight trailing white space
Plug 'ntpeters/vim-better-whitespace'

" Auto close tag
Plug 'alvan/vim-closetag'

" Move lines and selections with alt + [hjkl]
Plug 'matze/vim-move'

" Show file diffs
"Plug 'airblade/vim-gitgutter'

" Surround selector
Plug 'tpope/vim-surround'

" Repeat the plugin command using the dot (.) command
Plug 'tpope/vim-repeat'

" Re-open a file at the last cursor position
Plug 'farmergreg/vim-lastplace'

" Auto save file in normal mode
Plug '907th/vim-auto-save'

" Auto add paring parentheses
Plug 'jiangmiao/auto-pairs'

" Emacs kill-ring but it's in vim.
"s meta + p = cycle backward through your history of yanks
" meta + shift + p = cycle forwards through your history of yanks
""Plug 'maxbrunsfeld/vim-yankstack'

" Create directory if not exist when writing a file
Plug 'pbrisbin/vim-mkdir'

" Run current file
Plug 'thinca/vim-quickrun'

" Comment out lines
Plug 'tpope/vim-commentary'

" Adjust indentation style based on current and related files
Plug 'tpope/vim-sleuth'

" NERDTree
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}

" Colorize color code
Plug 'lilydjwg/colorizer'

" Show indentation lines
Plug 'Yggdroot/indentLine'

" Julia syntax highlighting
Plug 'JuliaEditorSupport/julia-vim'

" Multiple Cursors (ctrl + n)
Plug 'terryma/vim-multiple-cursors'

" Smooth Scroll
"Plug 'terryma/vim-smooth-scroll'

call plug#end()
