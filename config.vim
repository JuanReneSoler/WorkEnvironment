"omnisharp configuracion
let g:OmniSharp_server_stdio = 1
let g:OmniSharp_highlighting = 3

if executable('mono')
	let g:OmniSharp_server_use_mono = 1
else
	let g:OmniSharp_server_use_net6 = 1
endif

" ultisnip configuration
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<s-l>"
let g:UltiSnipsJumpBackwardTrigger="<s-h>"
let g:UltiSnipsEditSplit="vertical"

"coc configuration
let g:coc_global_extensions = ['coc-angular', 'coc-css', 'coc-cssmodules', 'coc-diagnostic', 'coc-emmet', 'coc-explorer', 'coc-git', 'coc-html', 'coc-html-css-support', 'coc-json', 'coc-omnisharp', 'coc-prettier', 'coc-tsserver', 'coc-snippets', 'coc-symbol-line', 'coc-xml', 'coc-sql']
  "'coc-copilot',
  "'coc-nav', 

"Ale configuration
let g:ale_linters = {
			\ 'cs': ['OmniSharp']
			\}

" configuration regions
syntax region csregion start=/#region/ end=/#endregion/
highlight csregion guibg=Yellow
autocmd Syntax js,cs,tsx setlocal foldmethod=syntax

"prettier
command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument

"lineindented
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:vim_json_conceal=0
let g:markdown_syntax_conceal=0

"lightline and show branch with vim-fugitive
"function MyFugitiveHead()
  "let head = FugitiveHead()
  "if head != ""
    "let head = "\uf126 " .. head
  "endif
  "return head
"endfunction

"relativepath => filename
let g:lightline = {
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],[ 'filename', 'readonly', 'modified' ] ],
    \   'right':[['gitbranch'], ['filetype', 'percent', 'lineinfo']],
    \ },
    \ 'component_function': {
    \   'gitbranch': 'MyFugitiveHead',
    \ },
    \ 'colorscheme':'gruvbox'
    \}

"vimspector
let g:vimspector_enable_mappings = 'HUMAN'
let g:vimspector_base_dir=expand('~/.vim/vimspector-config')
let g:vimspector_install_gadgets = [ 'netcoredbg', 'debugger-for-chrome', 'vscode-firefox-debug', 'vscode-node-debug2', ]

"far
let g:far#enable_undo=1
