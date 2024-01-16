"##############NOTA###############
"algunos de estos plugin requieren
"de instalar algunos parquetes que
"estan especificados en el archivo
"README.md
"#################################

call plug#begin('~/.vim/plugins/')

"tema
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'

"servidor onmisharp intelicode para c#
Plug 'OmniSharp/omnisharp-vim'

"coc-nvim, intelisense y autocompletado
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"ale, resaltado de syntaxis y erroes semanticos
Plug 'dense-analysis/ale'

"easymotion, desplazamiento eficiente
Plug 'easymotion/vim-easymotion'

" plugin para moverse entre archivos abiertos usando Ctr + (hjkl)
Plug 'christoomey/vim-tmux-navigator'

"plugin para auto cerrar las llaves y los corchetes
Plug 'jiangmiao/auto-pairs'

"plugin para encerrar entre llaves y corchetes pedazos detexto
Plug 'tpope/vim-surround'

"plugin para mostrar lineas verticales a cada indentacion
Plug 'Yggdroot/indentLine'

"test
"Plug 'tyewang/vimux-jest-test'
"Plug 'janko-m/vim-test'

"plugin para busqueda de archivos y texto dentro del proyecto
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim' 

"para comentar lineas de codigo mas rapido
Plug 'scrooloose/nerdcommenter'

"terminal virtual dentro de vim
"Plug 'voldikss/vim-floaterm'

"vim-polyglot, coloreo del codigo
Plug 'sheerun/vim-polyglot'

"status bar
Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale'

"multi cursor
Plug 'terryma/vim-multiple-cursors'

"plugin for Git
"Plug 'tpope/vim-fugitive'
Plug 'kdheepak/lazygit.nvim'

"snips
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'

"auto rename tag
Plug 'AndrewRadev/tagalong.vim'

"equivalente a Console Ninja
Plug 'metakirby5/codi.vim'

"vimspector
Plug 'puremourning/vimspector'

"search text and replace in multiple files
Plug 'brooth/far.vim'

call plug#end()
