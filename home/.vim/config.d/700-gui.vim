" GUI specific settings (could be in .gvimrc)
" -----------------------------------------------------------------------------
if has('gui_running')
  set guifont=Menlo:h12
  set go-=T
  set go-=l
  set go-=L
  set go-=r
  set go-=R
  if has('gui_macvim')
    macmenu &File.New\ Tab key=<nop>
    set fuoptions=maxhorz,maxvert
    set cursorline
    inoremap <unique> <F1> <ESC>:set invfullscreen<CR>
    nnoremap <unique> <F1> :set invfullscreen<CR>
    vnoremap <unique> <F1> :set invfullscreen<CR>
    vmap <unique> <D-]> >gv
    vmap <unique> <D-[> <gv
  end
endif
