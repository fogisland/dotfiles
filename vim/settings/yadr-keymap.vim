" ========================================
" General vim sanity improvements
" ========================================
"
"
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

" ,# Surround a word with #{ruby interpolation}
map ,# ysiw#
vmap ,# c#{<C-R>"}<ESC>

" ," Surround a word with "quotes"
map ," ysiw"
vmap ," c"<C-R>""<ESC>

" ,' Surround a word with 'single quotes'
map ,' ysiw'
vmap ,' c'<C-R>"'<ESC>

" ,) or ,( Surround a word with (parens)
" The difference is in whether a space is put in
map ,( ysiw(
map ,) ysiw)
vmap ,( c( <C-R>" )<ESC>
vmap ,) c(<C-R>")<ESC>

" ,[ Surround a word with [brackets]
map ,] ysiw]
map ,[ ysiw[
vmap ,[ c[ <C-R>" ]<ESC>
vmap ,] c[<C-R>"]<ESC>

" ,{ Surround a word with {braces}
map ,} ysiw}
map ,{ ysiw{
vmap ,} c{ <C-R>" }<ESC>
vmap ,{ c{<C-R>"}<ESC>

map ,` ysiw`

" gary bernhardt's hashrocket
" imap <c-l> <space>=><space>

"Go to last edit location with ,.
" nnoremap ,. '.

"When typing a string, your quotes auto complete. Move past the quote
"while still in insert mode by hitting Ctrl-a. Example:
"
" type 'foo<c-a>
"
" the first quote will autoclose so you'll get 'foo' and hitting <c-a> will
" put the cursor right after the quote


" arrow move in command mode
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-j> <UP>
cnoremap <C-k> <DOWN>
cnoremap <C-h> <LEFT>
cnoremap <C-l> <RIGHT>

" ,q to toggle quickfix window (where you have stuff like Ag)
" ,oq to open it back up (rare)
" instead, use ListToggle
" nmap <silent> ,qc :cclose<CR>
" nmap <silent> ,qo :copen<CR>

"Move back and forth through previous and next buffers
"with ,z and ,x
nnoremap <silent> ,z :bp<CR>
nnoremap <silent> ,x :bn<CR>


nnoremap < <C-w>5<
nnoremap > <C-w>5>
nnoremap + <C-w>5+
nnoremap _ <C-w>5-

" create <%= foo %> erb tags using Ctrl-k in edit mode
"imap <silent> <C-K> <%=   %><Esc>3hi

" create <% foo %> erb tags using Ctrl-j in edit mode
"imap <silent> <C-J> <%  %><Esc>2hi

" ============================
" Shortcuts for everyday tasks
" ============================

" copy current filename into system clipboard - mnemonic: (c)urrent(f)ilename
" this is helpful to paste someone the path you're looking at
nnoremap <silent> ,cf :let @* = expand("%:~")<CR>
nnoremap <silent> ,cn :let @* = expand("%:t")<CR>

"Clear current search highlight by double tapping //
nmap <silent> // :nohlsearch<CR>

"(v)im (c)ommand - execute current line as a vim command
" nmap <silent> ,vc yy:<C-f>p<C-c><CR>

"(v)im (r)eload
" nmap <silent> ,vr :so %<CR>

" ============================
" SplitJoin plugin
" ============================
nmap <Leader>ss :SplitjoinSplit<cr>
nmap <Leader>sj :SplitjoinJoin<cr>

" Get the current highlight group. Useful for then remapping the color
" map ,hi :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>

" ,hp = html preview
" map <silent> ,hp :!open -a Safari %<CR><CR>

nnoremap <silent> <Leader>w= :wincmd =<CR>
nnoremap <silent> <Leader>wo <C-w>o
nnoremap <silent> <Leader>wv <C-w>v
nnoremap <silent> <Leader>ws <C-w>s
nnoremap <silent> <Leader>wR :NERDTreeToggle<CR>:wincmd r<CR>:NERDTreeToggle<CR><C-w><RIGHT>
nnoremap <silent> <Leader>wr :NERDTreeToggle<CR>:wincmd R<CR>:NERDTreeToggle<CR><C-w><RIGHT>
nnoremap <silent> <Leader>wk :NERDTreeToggle<CR>:wincmd K<CR>:NERDTreeToggle<CR><C-w><RIGHT>
nnoremap <silent> <Leader>wj :NERDTreeToggle<CR>:wincmd J<CR>:NERDTreeToggle<CR><C-w><RIGHT>
nnoremap <silent> <Leader>wh :NERDTreeToggle<CR>:wincmd H<CR>:NERDTreeToggle<CR><C-w><RIGHT>
nnoremap <silent> <Leader>wl :NERDTreeToggle<CR>:wincmd L<CR>:NERDTreeToggle<CR><C-w><RIGHT>
nnoremap <silent> <Leader>wt :NERDTreeToggle<CR>:wincmd T<CR>:NERDTreeToggle<CR><C-w><RIGHT>
nnoremap <silent> <Leader>wx :NERDTreeToggle<CR>:wincmd x<CR>:NERDTreeToggle<CR><C-w><RIGHT>

" "custom copy'n'paste
" ""copy the current visual selection to ~/.vbuf
" vmap <silent> <leader>xy :w! ~/.vbuf<CR>
" "copy the current line to the buffer file if no visual selection
" nmap <silent> <leader>xy :.w! ~/.vbuf<CR>
" ""paste the contents of the buffer file
" nmap <silent> <leader>xp :r ~/.vbuf<CR>

"Reselect visual block after indent/outdent 
vnoremap < <gv
vnoremap > >gv

"Improve up/down movement on wrapped lines 
nnoremap j gj
nnoremap k gk

" arrow move in insert mode
inoremap <C-a> <C-O><S-i>
inoremap <C-e> <End>
inoremap <expr> <c-j> pumvisible() ? "\<C-e>\<Down>" : "\<Down>"
inoremap <expr> <c-k> pumvisible() ? "\<C-e>\<Up>" : "\<Up>"
inoremap <expr> <c-h> pumvisible() ? "\<C-e>\<Left>" : "\<Left>"
inoremap <expr> <c-l> pumvisible() ? "\<C-e>\<Right>" : "\<Right>"

"map for macro q
"<Space> has been mapped for Sneak/EasyMotion
" nnoremap <Space><Space> @q

map <leader>ww :w<CR>
map <leader>wa :wall<CR>
map <leader>xx :x<CR>
" map <leader>qq :qa<CR>

"redraw
" nmap <leader>rd :redraw!<CR>

nnoremap <Leader>sw :set wrap! wrap?<CR>
