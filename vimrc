source ~/.vimrc.vundle

set nu
set hlsearch
set incsearch
set nocompatible
set expandtab
set shiftwidth=4
set smartindent

syntax on
filetype on
filetype indent on


" remember the cursor last open
autocmd BufReadPost *
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \   exe "normal! g'\"" |
  \ endif

let mapleader = ";"
"""" third party plugins """"
" nerdtree
nmap <Leader>f :NERDTreeToggle<CR>
" airline
"set laststatus=2
let g:airline#extensions#tabline#enabled = 1
nmap <tab> :bn<CR>
nmap <S-tab> :bp<CR>
" tabbar
nmap <Leader>t :TagbarToggle<CR>
" vimshell
nmap <Leader>S :VimShell<CR>
" YouCompleteMe
"let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
" vim-go
nmap <Leader>b :GoBuild<CR>
nmap <Leader>r :GoRun<CR>
nmap <Leader>i :GoImport<CR>
