" for russian encodings
set fileencodings=utf-8,cp1251,koi8-r,cp866
" Turn on syntax highlight
syntax on
" .bash_aliases syntax highlight, from http://superuser.com/questions/178412/how-do-i-enable-syntax-highlighting-for-bash-aliases-in-vim
if has("autocmd")
  augroup bashalias
    autocmd BufRead,BufNewFile .bash_aliases set filetype=sh
  augroup END
endif
