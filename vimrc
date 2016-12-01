source ~/.vim/bundle/vimrc.vundle

set nu
set hlsearch
set incsearch
set nocompatible
set expandtab
set shiftwidth=4
set tabstop=4
set smartindent
set smartcase
set cino=g0
set backspace=2

colorscheme molokai

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
nmap <leader>x :bdelete<CR>
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>9 <Plug>AirlineSelectTab9
" tabbar
nmap <Leader>t :TagbarToggle<CR>
" vimshell
nmap <Leader>S :VimShell<CR>
" YouCompleteMe
"let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
nnoremap <leader>d :YcmCompleter GoToDefinitionElseDeclaration<CR>
" vim-go
nmap <Leader>b :GoBuild<CR>
nmap <Leader>r :GoRun<CR>
nmap <Leader>i :GoImport<CR>

"-----------------YCM--------------------
let g:ycm_server_python_interpreter='/usr/bin/python'

"-----------------cscopex-----------------
let g:cscope_silent=1                                     " disable toggle messages for database updated
let g:cscope_interested_files='\.c$\|\.cpp$\|\.h$\|\.hpp$\|\.cc'
let g:cscope_auto_update=1

"--------------cscope-----------------
"" Find in interactive
nnoremap <leader>fa :call CscopeFindInteractive(expand('<cword>'))<cr>
" s: Find this C symbol
nnoremap <leader>fs :call CscopeFind('s', expand('<cword>'))<cr>
" " t: Find this text string
nnoremap <leader>ft :call CscopeFind('t', expand('<cword>'))<cr>
" " t: Find this text string
nnoremap <leader>fc :call CscopeFind('c', expand('<cword>'))<cr>

nnoremap <silent>s :call QuickFixToggle()<cr>

"-----------------syntastic---------------
let g:syntastic_enable_signs=1
let g:syntastic_error_symbol='!!'
let g:syntastic_style_error_symbol='!!'
let g:syntastic_warning_symbol='??'
let g:syntastic_style_warning_symbol='??'
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=0 " disable error list windows.
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=1
let g:syntastic_aggregate_errors=1
let g:syntastic_go_checkers = ['go', 'golint', 'govet', 'errcheck']

"----------------vim-go-----------------
let g:go_template_autocreate=0  " disable template auto create"
let g:go_highlight_array_whitespace_error=1
let g:go_highlight_chan_whitespace_error=1
let g:go_highlight_extra_types=1
let g:go_highlight_space_tab_error=1
let g:go_highlight_trailing_whitespace_error=1
let g:go_highlight_generate_tags=1
let g:go_highlight_string_spellcheck=1
let g:go_highlight_format_strings=1

let g:go_highlight_functions=1
let g:go_highlight_methods=1
let g:go_highlight_fields=1
let g:go_highlight_types=1
let g:go_highlight_operators=1
let g:go_highlight_build_constraints=1

au bufread,bufnewfile *.c let g:ycm_global_ycm_extra_conf = '~/.vim/ycm/c/.ycm_extra_conf.py'
au bufread,bufnewfile *.h,*.hpp,*.cpp,*.cc,*.cxx let g:ycm_global_ycm_extra_conf = '~/.vim/ycm/cpp/.ycm_extra_conf.py'
if filereadable(".ycm_extra_conf.py")
    let g:ycm_global_ycm_extra_conf = './.ycm_extra_conf.py'
endif

au filetype c,cpp,objc,objcpp,cs nnoremap gd :YcmCompleter GoToDefinitionElseDeclaration<cr>
