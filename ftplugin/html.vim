setlocal softtabstop=2
setlocal shiftwidth=2
setlocal expandtab

let b:ale_fixers = ['prettier']

noremap <leader>b :call HtmlBeautify()<cr>
vnoremap <buffer> <leader>b :call RangeHtmlBeautify()<cr>
