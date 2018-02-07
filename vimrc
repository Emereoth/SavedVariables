syntax on
set mouse=a
colorscheme eva01
set colorcolumn=80
set shiftwidth=4
set tabstop=4
set autoindent
set smartindent

set relativenumber

autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

au * WinEnter cursorcolumn
au * WinEnter cursorline
set cursorcolumn
set cursorline

inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

inoremap (      ()<Left>
inoremap (<CR>  )<CR>)<Esc>O
inoremap ((     (
inoremap ()     ()

inoremap [      []<Left>
inoremap [<CR>  ]<CR>]<Esc>O
inoremap [[     [
inoremap []     []

inoremap "      ""<Left>
inoremap "<CR>  "<CR>"<Esc>O
inoremap ""     "
inoremap ""     ""

inoremap <      <><Left>
inoremap <<CR>  <<CR>><Esc>O
inoremap <<     <
inoremap <>     <>

inoremap '      ''<Left>
inoremap '<CR>  '<CR>'<Esc>O
inoremap ''     '
inoremap ''     ''

set backup
set backupdir=~/.vim
