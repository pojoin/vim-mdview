if (exists('g:loaded_mdview') && g:loaded_mdview)
    finish
endif
let g:loaded_mdview = 1

let g:mdview_command = 'echo'
function! Mdview()
    execute "!" . g:mdview_command . " " . bufname("%")
endfunction

nnoremap <buffer> pp :call Mdview()<cr>
