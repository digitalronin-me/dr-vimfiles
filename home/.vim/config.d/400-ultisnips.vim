" Snippets
" -----------------------------------------------------------------------------

"" Tell snipmate to pull it's snippets from a custom directory
"let g:snippets_dir = $HOME.'/.vim/snippets/'
"
"inoremap <silent> <F5> <c-r>=ShowAvailableSnips()<cr>
"
"if !exists("dr_vimfiles_loaded_snippets_config")
"  let dr_vimfiles_loaded_snippets_config = 1
"
"  " Reload all snippets when creating new ones.
"  autocmd! BufWritePost *.snippets call ReloadAllSnippets()
"endif
