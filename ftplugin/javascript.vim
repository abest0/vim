setlocal softtabstop=2
setlocal shiftwidth=2
setlocal expandtab

noremap <leader>b :call JsBeautify()<cr>
vnoremap <buffer> <leader>b :call RangeJsBeautify()<cr>

setlocal foldmethod=syntax
setlocal foldlevelstart=4
normal zR
