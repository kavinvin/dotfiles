" Set leader key to space
let g:mapleader = "\<space>"

" , + space = remove search highlights
nnoremap ,<space> :nohlsearch<cr>

" ctrl + i = return to previous file
noremap <C-i> :e#<cr>

" ctrl + p = search files in current directory
nnoremap <C-p> :FZF<cr>

" ctrl + y = copy selecting text to clipboard
vnoremap <C-y> y:call system('pbcopy', @0)<cr>
nnoremap <C-y> yl:call system('pbcopy', @0)<cr>

" ctrl + [jkhl] to move around split panes
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-h> <C-w><C-h>
nnoremap <C-l> <C-w><C-l>

" ctrl + x = autocomplete directory
inoremap <C-x> <C-x><C-f>

" leader + wc = count words in current file
nmap <leader>wc :w !wc<cr>

" ctrl + a select all
noremap <leader>a <esc>ggVG<CR>

" Vocabulary utils
nmap <leader>k "kyl:call system('pipe-arg kanjidamage', @k)<cr>
nmap <leader>j "jyl:call system('pipe-arg jisho', @j)<cr>
vmap <leader>j "jy:call system('pipe-arg jisho', @j)<cr>
nmap <leader>v "vyiw:call system('pipe-arg vocabulary', @v)<cr>

" leader + s = reload vim configuration
nmap <leader>s :so $MYVIMRC<cr>

" leader + p = preview markdown as html in Safari
nmap <leader>md :w !pandoc -f markdown -t html > /tmp/pandoc.html<cr>:!safari /tmp/pandoc.html<cr><cr>

" Enable going up and down on wrapped lines.
" This makes navigating long lines (e.g. minified code) much easier.
" Read more: http://tilvim.com/2013/05/16/visual-lines.html
nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'
nnoremap gj j
nnoremap gk k

" leader + p = scroll to older register
nmap <leader>p <Plug>yankstack_substitute_older_paste

" leader + shift + p = scroll to newer register
nmap <leader>P <Plug>yankstack_substitute_newer_paste

" option + r = run
nnoremap <A-r> :QuickRun<cr>

" option + / = comment or uncomment
nmap <A-/> gcc
vmap <A-/> gc

" ctrl + e = toggle nerdtree
map <C-e> :NERDTreeToggle<cr>
