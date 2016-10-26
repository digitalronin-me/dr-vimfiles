" Syntax
" -----------------------------------------------------------------------------
if $TERM == 'xterm-color' && &t_Co == 8
  set t_Co=16
endif

" Automatically turn syntax hilighting on if the terminal can handle it
if &t_Co > 2 || has("gui_running")
  syntax on
  set background=dark
  colorscheme desert
  " colorscheme torte
endif
