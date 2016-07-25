" set qsl filetype while opening a file
if exists('did_load_filetypes')
    finish
endif
augroup filetypedetect
    au! BufRead,BufNewFile *.qsl     setfiletype qsl
augroup END
