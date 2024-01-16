"setea el encoding de archivos
set encoding=UTF-8

"seta la consola para que use colores de 256 bytes-necesaro para gruvbox
set t_Co=256

"habilita el resaltado de syntaxix
syntax enable
"syntax sync fromstart

"setea ver el numero de las lineas en la parte izquieda
set number

"setea que se mueltre las lineas que hay hacia arriba y hacia
"a abajo desde la posicion actual del cursor
set relativenumber

"setea el uso de mause en todos los modos del de vim
set mouse=a

"setea las funciones de la tecla de backspace
set bs=indent,eol,start

"setea compartir el clipboar con el sitema operativo
set clipboard=unnamed,unnamedplus

"setea marcar la dinea donde esta el cursor
set cursorline

"setea linea vertical a la derecha para el alineamiento y la diatacia a la que
"esta
set colorcolumn=120

"setea el parentesis que cierra al posicionarte sobre alguno
set showmatch

"setea que se puedan solapsar lo elements marcados entre [{()}]
set fdm=syntax
set foldnestmax=1

"1- este linea activa la funcion filetype que detecta el tipo de archivo
"y activa resaltado de sintaxis, opciones, etc.
"2- activa el auto-indentado para el tipo de archivo detectado (si existe).
"3- carga complementos para el tipo de archivo detectado.
filetype indent plugin on

"set omni completion
set omnifunc=syntaxcomplete#Complete

"setea los espacios por tabulación
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

"setea el fondo oscuro para la consola
set background=dark

"seta la visibilidad de la barra inferior y en que momento, en este caso esta
"siempre visible
set laststatus=2

"setea la tecla lider para los atajos de teclasdo
let mapleader=" "

so ~/.vim/plugins.vim
so ~/.vim/keys-map.vim
so ~/.vim/config.vim
so ~/.vim/coc-config.vim

"comportamiento del cursor en modo normal e insertar
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

"configuracion del tema
colorscheme gruvbox

"hace que vim no muestre los modos
set noshowmode

"muestra la barra de tabs
set showtabline=2

"setea el tiempo en que vim actualiza los cambios en un archivo.
set updatetime=100

