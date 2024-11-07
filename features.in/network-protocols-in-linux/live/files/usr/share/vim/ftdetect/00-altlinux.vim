" ALT Linux specific filetype additions
"
" Maintainer:   Vim Development Team <vim@packages.altlinux.org>
" Last Change:  2006 Sep  2

" Mutt with Owl security patch
au BufNewFile,BufRead mutt.[A-Za-z0-9]\{6\}  setf mail

" Postfix's aliases
au BufNewFile,BufRead /etc/postfix/aliases  setf mailaliases

" named by default is chrooted to /var/lib/bind/
au BufNewFile,BufRead /var/lib/bind/etc/*  setf named
au BufNewFile,BufRead /var/lib/bind/zone/* setf bindzone

" Apache configuration
au BufNewFile,BufRead /etc/httpd{,2}/conf/*.conf setf apache

" Password file
au BufNewFile,BufRead /etc/tcb/*/shadow{,-} setf passwd

