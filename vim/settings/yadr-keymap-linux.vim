" ========================================
" Linux specific General vim sanity improvements
" ========================================
"
" ========================================
" RSI Prevention - keyboard remaps
" ========================================
" Certain things we do every day as programmers stress
" out our hands. For example, typing underscores and
" dashes are very common, and in position that require
" a lot of hand movement. Vim to the rescue
"
" Now using the middle finger of either hand you can type
" underscores with Alt-k or Alt-d, and add Shift
" to type dashes
imap  <A-k> _
imap  <A-d> -
imap  <A-e> =

" Change inside various enclosures with Alt-" and Alt-'
" The f makes it find the enclosure so you don't have
" to be standing inside it
nnoremap <A-'> f'ci'
nnoremap <A-"> f"ci"
nnoremap <A-(> f(ci(
nnoremap <A-)> f)ci)
nnoremap <A-[> f[ci[
nnoremap <A-]> f]ci]

" ==== NERD tree
" Alt-Shift-N for nerd tree
nmap <A-N> :NERDTreeToggle<CR>

" move up/down quickly by using Alt-j, Alt-k
" which will move us around by functions
nnoremap  <A-j> }
nnoremap  <A-k> {
autocmd FileType ruby map <buffer> <A-j> ]m
autocmd FileType ruby map <buffer> <A-k> [m
autocmd FileType rspec map <buffer> <A-j> }
autocmd FileType rspec map <buffer> <A-k> {
autocmd FileType javascript map <buffer> <A-k> }
autocmd FileType javascript map <buffer> <A-j> {

" Command-/ to toggle comments
map <A-/> :TComment<CR>
imap <A-/> <Esc>:TComment<CR>i

" Use Alt- numbers to pick the tab you want
map  <A-1> :tabn 1<cr>
map  <A-2> :tabn 2<cr>
map  <A-3> :tabn 3<cr>
map  <A-4> :tabn 4<cr>
map  <A-5> :tabn 5<cr>
map  <A-6> :tabn 6<cr>
map  <A-7> :tabn 7<cr>
map  <A-8> :tabn 8<cr>
map  <A-9> :tabn 9<cr>

" Resize windows with arrow keys
nnoremap <C-Up> <C-w>+
nnoremap <C-Down> <C-w>-
nnoremap <C-Left> <C-w><
nnoremap <C-Right>  <C-w>>

" ============================
" Tabularize - alignment
" ============================
" Hit Alt-Shift-A then type a character you want to align by
nmap <A-A> :Tabularize /
vmap <A-A> :Tabularize /

" Source current file Alt-% (good for vim development)
map <A-%> :so %<CR>
