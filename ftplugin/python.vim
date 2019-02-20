let g:pydocstring_enable_mapping=0

let b:ale_linters = ['pylint']
let b:ale_fixers = [
            \ 'remove_trailing_lines',
            \ 'isort',
            \ 'yapf',
\ ]
" Disable warnings about trailing whitespace for Python files.
let b:ale_warn_about_trailing_whitespace = 0
" Disable linting on text changes
let b:ale_lint_on_text_changed = 'never'
let b:ale_lint_on_enter = 0
let b:ale_python_pylint_options = '--load-plugins pylint_django'

nnoremap <leader>a :cclose<CR>
nmap <silent> <leader>p <Plug>(pydocstring)

nmap <leader>ap <Plug>(ale_previous_wrap)
nmap <leader>an <Plug>(ale_next_wrap)

" Bind F8 to fixing problems with ALE
nmap <F8> <Plug>(ale_fix)
noremap <silent> <leader>y :call yapf#YAPF()<CR>

set encoding=utf-8
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
