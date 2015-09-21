setlocal softtabstop=2
setlocal shiftwidth=2
setlocal expandtab

noremap <leader>b :call HtmlBeautify()<cr>
vnoremap <buffer> <leader>b :call RangeHtmlBeautify()<cr>
