" vim-rails
" -----------------------------------------------------------------------------
function! s:setRails()
  map <buffer> <leader>rc :Rcontroller
  map <buffer> <leader>vc :RVcontroller
  map <buffer> <leader>sc :RScontroller
  map <buffer> <leader>vf :RVfunctional
  map <buffer> <leader>sf :RSfunctional
  map <buffer> <leader>m :Rmodel
  map <buffer> <leader>vm :RVmodel
  map <buffer> <leader>sm :RSmodel
  map <buffer> <leader>u :Runittest
  map <buffer> <leader>vu :RVunittest
  map <buffer> <leader>su :RSunittest
  map <buffer> <leader>vv :RVview
  map <buffer> <leader>sv :RSview
  map <buffer> <leader>A  :A<cr>
  map <buffer> <leader>av :AV<cr>
  map <buffer> <leader>as :AS<cr>
  map <buffer> <leader>aa :R<cr>
endfunction

if !exists("autocmd_loaded_vim_rails_b28wd")
  let autocmd_loaded_vim_rails_b28wd = 1
  au User Rails call s:setRails()
endif
