let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"

nmap <leader>r <Plug>(go-run)
nmap <leader>b <Plug>(go-build)
nmap <leader>t <Plug>(go-test)
nmap <leader>c <Plug>(go-coverage)

nmap <Leader>gb <Plug>(go-doc-browser) " open Godoc in brower

setlocal foldmethod=syntax
setlocal foldlevelstart=20
normal zR

autocmd BufWritePost,FileWritePost execute 'Lint' | cwindow
