set showcmd
syntax enable
" colorscheme darcula
set relativenumber
set nowrap
inoremap jj <ESC>

nnoremap ; :
nnoremap : ;
" search files with ctrl p
nnoremap <c-p> :Files <CR>

" search world used with
" is necessary install ag command in SO
nnoremap <Leader>f :Ag<space>

nnoremap <Leader>pdb o<CR>import ipdb<CR>ipdb.set_trace()<CR><esc>

" syntastic line length
let g:syntastic_python_checkers=['python', 'flake8']
let g:syntastic_python_flake8_post_args="--max-line-length=120"

" helper format json
nnoremap <Leader>fj :%!python -m json.tool<CR>
