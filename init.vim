call plug#begin('~/.local/share/nvim/plugged') " https://github.com/junegunn/vim-plug
Plug 'tpope/vim-sensible' " https://github.com/tpope/vim-sensible — defaults
Plug 'wincent/command-t' " https://github.com/wincent/command-t/blob/master/doc/command-t.txt
Plug 'tpope/vim-vinegar' " https://github.com/tpope/vim-vinegar — enhances netrw
Plug 'vim-airline/vim-airline' " https://github.com/vim-airline/vim-airline — status bar
Plug 'benekastah/neomake' " https://github.com/benekastah/neomake
Plug 'chrisbra/csv.vim', { 'for': 'csv' } " https://github.com/chrisbra/csv.cim
Plug 'tpope/vim-repeat' " https://github.com/tpope/vim-repeat
"Plug 'svermeulen/vim-easyclip' " https://github.com/svermeulen/vim-easyclip
Plug 'pangloss/vim-javascript', { 'for': 'javascript' } " https://github.com/pangloss/vim-javascript
Plug 'tomtom/tcomment_vim' " https://github.com/tomtom/tcomment_vim — commenting
" Plug 'tpope/vim-commentary' " https://github.com/tpope/vim-commentary
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim' " https://github.com/junegunn/fzf.vim
Plug 'tpope/vim-fugitive' " https://github.com/tpope/vim-fugitive
Plug 'tpope/vim-rhubarb' " https://github.com/tpope/vim-rhubarb
Plug 'elzr/vim-json' " https://github.com/elzr/vim-json
Plug 'dahu/vim-fanfingtastic' " https://github.com/dahu/vim-fanfingtastic
Plug 'moll/vim-node' " https://github.com/moll/vim-node
Plug 'mxw/vim-jsx' " https://github.com/mxw/vim-jsx
Plug 'tpope/vim-ragtag' " https://github.com/tpope/vim-ragtag
Plug 'alvan/vim-closetag' " https://github.com/alvan/vim-closetag 
call plug#end()

" Don't use this — disables block paste :-/
" set cb=unnamed

" neomake
autocmd BufWritePost * Neomake
autocmd! QuitPre * let g:neomake_verbose = 0
" let g:neomake_javascript_eslint_exe = $PWD .'/node_modules/.bin/standard'
" let g:neomake_javascript_enabled_makers = ['standard']
let g:neomake_python_flake8_maker = { 'args': ['--ignore=E501,E731'] }
let g:neomake_python_enabled_makers = ['flake8']

" General
set nofoldenable

autocmd FileType javascript set sw=2 sts=2 tw=120 expandtab colorcolumn=120 foldmethod=indent " omnifunc=javascriptcomplete#CompleteJS
autocmd FileType json set sw=2 sts=2 tw=120 expandtab colorcolumn=120 foldmethod=indent 

set expandtab
set sw=2
set sts=2

set t_Co=256
syntax on

set hidden " Don't complain about unsaved buffers when just opening a new buffer
let g:deoplete#enable_at_startup = 1

" Don't like the auto-hiding on JSON files
let g:vim_json_syntax_conceal = 0

let g:ragtag_global_maps = 1
autocmd FileType javascript.jsx    call RagtagInit()

let g:closetag_filenames = '*.xml,*.html,*.xhtml,*.jsx'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_close_shortcut = '<leader>>'

set number relativenumber

