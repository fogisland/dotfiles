" Prevent vim-session from asking us to load the session.
" If you want to load the session, use :SaveSession and :OpenSession
let g:session_autosave = 'no'
let g:session_autoload = 'no'

nnoremap <Leader>ss :SaveSession 
nnoremap <Leader>os :OpenSession 
