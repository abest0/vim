setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2
setlocal expandtab


let b:ale_linters = {
            \ 'javascript': ["eslint"],
\ }
let b:ale_fixers = ['eslint', 'prettier']
let b:ale_fix_on_save = 0

" let g:oceanic_next_terminal_bold = 1
" let g:oceanic_next_terminal_italic = 1
" colorscheme OceanicNext
"
nmap <leader>ap <Plug>(ale_previous_wrap)
nmap <leader>an <Plug>(ale_next_wrap)

nnoremap <leader>a :cclose<CR>
noremap <leader>b :call JsBeautify()<cr>
vnoremap <buffer> <leader>b :call RangeJsBeautify()<cr>

noremap <leader>td :TernDef<cr>
noremap <leader>tn :TernRefs<cr>
noremap <leader>tr :TernRename<cr>
noremap <leader>tt :TernType<cr>

" Bind F8 to fixing problems with ALE
nmap <F8> <Plug>(ale_fix)

setlocal foldmethod=syntax
setlocal foldlevelstart=4
normal zR

" Open file's Jest test
function! OpenTest()
  execute ":vsplit" expand('%:p:h') . '/__tests__/' . expand('%:t:r') . '.test.' . expand('%:e')
endfunction
