if (exists('g:loaded_markdownview') && g:loaded_markdownview)
    finish
endif
let g:loaded_markdownview = 1

let g:markdown_command = 'echo'
function! Markdownview()
    execute "!" . g:markdown_command . " " . bufname("%")
endfunction

nnoremap <buffer> pp :call Markdownview()<cr>
