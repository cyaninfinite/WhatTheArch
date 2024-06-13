syntax on
set cursorline

" turn hybrid line numbers on
set number relativenumber

" Indicate 100 char
set colorcolumn=100
set tabstop=4

set laststatus=2
colorscheme catppuccin_macchiato 
let g:lightline = {'colorscheme': 'catppuccin_macchiato'}
set noshowmode
set termguicolors

" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

