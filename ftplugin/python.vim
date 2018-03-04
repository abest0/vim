let g:pydocstring_enable_mapping=0


let g:syntastic_python_checkers = ['pylint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_python_python_exec = 'python3'
" let g:syntastic_python_flake8_exec = 'python3'
" let g:syntastic_python_flake8_args = ['-m', 'flake8', '--ignore=E501,C0111']

nnoremap <leader>a :cclose<CR>
nmap <silent> <leader>p <Plug>(pydocstring)

noremap <leader>y :call yapf#YAPF()<CR> 

set encoding=utf-8
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
