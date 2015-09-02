" alias yw to yank the entire word 'yank inner word'
" even if the cursor is halfway inside the word
" FIXME: will not properly repeat when you use a dot (tie into repeat.vim)
nnoremap ,yw yiww
" ,ow = 'overwrite word', replace a word with what's in the yank buffer
" FIXME: will not properly repeat when you use a dot (tie into repeat.vim)
nnoremap ,ow "_diwhp
"make Y consistent with C and D
nnoremap Y y$
function! YRRunAfterMaps()
  nnoremap Y   :<C-U>YRYankCount 'y$'<CR>
endfunction

" Make 0 go to the first character rather than the beginning
" of the line. When we're programming, we're almost always
" interested in working with text rather than empty space. If
" you want the traditional beginning of line, use ^
nnoremap 0 ^
nnoremap ^ 0

"Move back and forth through previous and next buffers
"with ,z and ,x
nnoremap  ,z :bp<CR>
nnoremap  ,x :bn<CR>

" copy current filename into system clipboard - mnemonic: (c)urrent(f)ilename
" this is helpful to paste someone the path you're looking at
nnoremap  ,cf :let @* = expand("%:~")<CR>
nnoremap  ,cn :let @* = expand("%:t")<CR>

"Clear current search highlight by double tapping //
nmap  // :nohlsearch<CR>

" ABOUNT WINDOW
nnoremap  <Leader>w= :wincmd =<CR>
nnoremap  <Leader>wo :ZoomWin<CR>
nnoremap  <Leader>wv <C-w>v
nnoremap  <Leader>ws <C-w>s
nnoremap  <Leader>wR :NERDTreeToggle<CR>:wincmd r<CR>:NERDTreeToggle<CR><C-w><RIGHT>
nnoremap  <Leader>wr :NERDTreeToggle<CR>:wincmd R<CR>:NERDTreeToggle<CR><C-w><RIGHT>
nnoremap  <Leader>wk :NERDTreeToggle<CR>:wincmd K<CR>:NERDTreeToggle<CR><C-w><RIGHT>
nnoremap  <Leader>wj :NERDTreeToggle<CR>:wincmd J<CR>:NERDTreeToggle<CR><C-w><RIGHT>
nnoremap  <Leader>wh :NERDTreeToggle<CR>:wincmd H<CR>:NERDTreeToggle<CR><C-w><RIGHT>
nnoremap  <Leader>wl :NERDTreeToggle<CR>:wincmd L<CR>:NERDTreeToggle<CR><C-w><RIGHT>
nnoremap  <Leader>wt :NERDTreeToggle<CR>:wincmd T<CR>:NERDTreeToggle<CR><C-w><RIGHT>
nnoremap  <Leader>wx :NERDTreeToggle<CR>:wincmd x<CR>:NERDTreeToggle<CR><C-w><RIGHT>
nnoremap < <C-w>5<
nnoremap > <C-w>5>
nnoremap + <C-w>5+
nnoremap _ <C-w>5-

" BACKGROUND ENHANCEMENT
"Reselect visual block after indent/outdent 
vnoremap < <gv
vnoremap > >gv
"Improve up/down movement on wrapped lines 
nnoremap j gj
nnoremap k gk

" ARROW MOVEMENTS
" arrow move in insert mode
inoremap <C-a> <C-O><S-i>
inoremap <C-e> <End>
inoremap <expr> <c-j> pumvisible() ? "\<C-e>\<Down>" : "\<Down>"
inoremap <expr> <c-k> pumvisible() ? "\<C-e>\<Up>" : "\<Up>"
inoremap <expr> <c-h> pumvisible() ? "\<C-e>\<Left>" : "\<Left>"
inoremap <expr> <c-l> pumvisible() ? "\<C-e>\<Right>" : "\<Right>"
" arrow move in command mode
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-j> <UP>
cnoremap <C-k> <DOWN>
cnoremap <C-h> <LEFT>
cnoremap <C-l> <RIGHT>

" TOP LEVEL CONTROL
map <leader>ww :w<CR>
map <leader>wa :wall<CR>
map <leader>qq :q<CR>
map <leader>qa :qa<CR>

" QUICK SETTINGS
nnoremap <Leader>sw :set wrap! wrap?<CR>
nnoremap <Leader>sn :set nu! nu?<CR>
nnoremap <Leader>sp :set paste! paste?<CR>

