function! myspacevim#before() abort
    inoremap jj <Esc>
    nnoremap ; :
    nnoremap : ;
    nnoremap <Leader>pdb o<CR>import ipdb<CR>ipdb.set_trace()<CR><esc>
    set ignorecase
    set smartcase
endfunction

function! myspacevim#after() abort
endfunction
