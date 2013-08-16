" vim-rails
" -----------------------------------------------------------------------------
function! s:setRails()
  map <unique> <buffer> <leader>rc :Rcontroller
  map <unique> <buffer> <leader>vc :RVcontroller
  map <unique> <buffer> <leader>sc :RScontroller
  map <unique> <buffer> <leader>vf :RVfunctional
  map <unique> <buffer> <leader>sf :RSfunctional
  map <unique> <buffer> <leader>m :Rmodel
  map <unique> <buffer> <leader>vm :RVmodel
  map <unique> <buffer> <leader>sm :RSmodel
  map <unique> <buffer> <leader>u :Runittest
  map <unique> <buffer> <leader>vu :RVunittest
  map <unique> <buffer> <leader>su :RSunittest
  map <unique> <buffer> <leader>vv :RVview
  map <unique> <buffer> <leader>sv :RSview
  map <unique> <buffer> <leader>A  :A<cr>
  map <unique> <buffer> <leader>av :AV<cr>
  map <unique> <buffer> <leader>as :AS<cr>
  map <unique> <buffer> <leader>aa :R<cr>
endfunction

if !exists("autocmd_loaded_vim_rails_b28wd")
  let autocmd_loaded_vim_rails_b28wd = 1
  au User Rails call s:setRails()
endif
