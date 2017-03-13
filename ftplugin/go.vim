let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_fmt_command = "goimports"

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
    if l:file =~# '^\f\+_test\.go$'
        call go#cmd#Test(0, 1)
    elseif l:file =~# '^\f\+\.go$'
        call go#cmd#Build(0)
    endif
endfunction

nmap <leader>r <Plug>(go-run)
nmap <leader>b :call <SID>build_go_files()<CR>
nmap <leader>c <Plug>(go-coverage-toggle)
nmap <Leader>gb <Plug>(go-doc-browser) " open Godoc in brower
nmap <leader>t <Plug>(go-test)
nmap <Leader>gt :call GoTests()<CR> " call GoTests to create a test for the function under the cursor

" :GoDef but opens in a vertical split
nmap <Leader>v <Plug>(go-def-vertical)
" :GoDef but opens in a horizontal split
nmap <Leader>s <Plug>(go-def-split)

" :GoAlternate  commands :A, :AV, :AS and :AT
command! -bang A call go#alternate#Switch(<bang>0, 'edit')
command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
command! -bang AS call go#alternate#Switch(<bang>0, 'split')


nmap <Leader>s <Plug>(go-implements)
nmap <Leader>i <Plug>(go-info)
nmap <Leader>e <Plug>(go-rename)

setlocal noexpandtab tabstop=4 shiftwidth=4
setlocal foldmethod=syntax
setlocal foldlevelstart=20

setlocal autowrite
normal zR
