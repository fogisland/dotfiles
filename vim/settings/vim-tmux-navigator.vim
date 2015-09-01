" Don't allow any default key-mappings.
let g:tmux_navigator_no_mappings = 1

" Re-enable tmux_navigator.vim default bindings, minus <c-\>.
" <c-\> conflicts with NERDTree "current file".

nnoremap  <c-h> :TmuxNavigateLeft<cr>
nnoremap  <c-j> :TmuxNavigateDown<cr>
nnoremap  <c-k> :TmuxNavigateUp<cr>
nnoremap  <c-l> :TmuxNavigateRight<cr>
