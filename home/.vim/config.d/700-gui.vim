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
    inoremap <F1> <ESC>:set invfullscreen<CR>
    nnoremap <F1> :set invfullscreen<CR>
    vnoremap <F1> :set invfullscreen<CR>
    vmap <D-]> >gv
    vmap <D-[> <gv
  end
endif
