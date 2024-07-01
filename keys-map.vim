"custom maps
nmap <Leader>q :q<cr>
nmap <Leader>Q :qa<cr>
nmap <leader>w :w!<CR>
imap <Leader><TAB> <ESC>

"coc-tree
nmap <Leader>; :CocCommand explorer<cr>

" easymotion 
nmap <silent> f <Plug>(easymotion-s2)

"fzf
let dir_to_check = '.git'
let current_path = expand('%:p:h')

if isdirectory(current_path . '/' . dir_to_check)
  nmap <Leader>f :GFiles<CR>
else
  nmap <Leader>f :Files<CR>
endif

nmap <Leader>b :Buff<CR>
nmap <Leader>t :Ag<CR>

"quick typing
imap <Leader>;; <Esc>$a;
imap <Leader>:: <Esc>$a:
imap <Leader>,, <Esc>$a,

"float-term
nmap <Leader>x :FloatermNew<cr>

"codi
nmap <Leader>xx :Codi!!<cr>

"scroll
noremap <A-j> <ESC>10<C-e>
noremap <A-k> <ESC>10<C-y>

"moverse entre buffers
"nmap <silent> <s-h> :bp<cr>
"nmap <silent> <s-l> :bn<cr>

"moverse entre tabs
nmap <silent> <s-j> :tabn<cr>
nmap <silent> <s-k> :tabp<cr>
nmap <silent> <Leader>d :tabclose<cr>

"far
nnoremap <silent><Leader>R  :Farr<cr>
vnoremap <silent><Leader>R  :Farr<cr>

"lazygit
nmap <silent> <Leader>G :LazyGit<CR>
