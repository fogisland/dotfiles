" map <F5> :QuickRun<CR>
map <Leader>qr :QuickRun<CR>
cmap <Leader>qr :QuickRun<CR>
let g:quickrun_config = {}
let g:quickrun_config.erlang = {'command' : 'erl -pa ebin'}
let g:quickrun_config.javascript = {'command' : 'node', 'cmdopt' : '--harmony'}
