"========== vimrc by joy ==========

syntax on
set ai nu showmatch 
set incsearch hlsearch
set guifont=Monaco:h13 "mac
colorscheme desert "mac
set shiftwidth=2
"set expandtab

"maximize the number of tab characters
"set smarttab

"formatoptions extra to make big comment lines easier
set fo+=ro

"show the command as it is typed
set showcmd

"customized key mapping
:map v I// 
:map z I<Del><Del><Del><Right>
:map!  <!---->hhi  i
