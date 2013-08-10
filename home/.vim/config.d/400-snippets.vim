" Snippets
" -----------------------------------------------------------------------------
" Tell snipmate to pull it's snippets from a custom directory
let g:snippets_dir = $HOME.'/.vim/snippets/'

if !exists("autocmd_loaded_snippets_2l2fb")
  let autocmd_loaded_snippets_2l2fb = 1

  " Reload all snippets when creating new ones.
  autocmd! BufWritePost *.snippets call ReloadAllSnippets()
endif
