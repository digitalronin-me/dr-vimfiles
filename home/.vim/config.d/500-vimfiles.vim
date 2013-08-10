" Commands and helper functions
" -----------------------------------------------------------------------------

" Sort CSS properties between the braces alphabetically
:command! SortCSS :g#\({\n\)\@<=#.,/}/sort | :noh


" Key mapping
" -----------------------------------------------------------------------------

" Block movement
nmap <tab> %
vmap <tab> %

" Insert/append a single character
nmap ,, i_<esc>r
nmap ;; a_<esc>r

" Clear the search highlight
map <silent> \ :silent nohlsearch<cr>

" <F1> toggles fullscreen in gui
nnoremap <silent> <F3> :TlistToggle<cr>
nnoremap <silent> <F4> :YRShow<cr>
ino <silent> <F5> <c-r>=ShowAvailableSnips()<cr>
" <F9>-<F12> is reserved for .vimrc.local

" Visually select the text that was last edited/pasted
nmap gV `[v`]

" Leader mapping
" -----------------------------------------------------------------------------
map <leader>a :Ack

" Toggle wrapping in the current buffer
nmap <silent> <leader>wt :set wrap!<cr>

" Edit .vimrc and .vimrc.local
nmap <leader>evm <C-w><C-v><C-l>:e $MYVIMRC<cr>
nmap <leader>evl <C-w><C-v><C-l>:e ~/.vimrc.local<cr>

" Collapse all multi-line occurrences of whitespace into one line
map <leader>CN :%s/^\n\+/\r//<cr>:let @/=''<cr>

" Clean whitespace
map <leader>CW :%s/\s\+$//<cr>:let @/=''<cr>

" Retab My Authority.
map <silent><leader>CT :retab<cr>

" Open current buffer in a new split
map <leader>s <C-w>v<C-w>l

" Toggle spelling hints
nmap <silent> <leader>ts :set spell!<cr>

" Reload ctags
map <leader>rt :!ctags --extra=+f -R *<cr><cr>

" Git bindings
map <leader>gs :Gstatus<cr>

" Opens an edit command with the path of the currently edited file filled in
map <leader>e :e <C-R>=expand("%:p:h") . "/" <cr>

" Inserts the path of the currently edited file into a command - Command mode: Ctrl+P
cmap <C-P> <C-R>=expand("%:p:h") . "/" <CR>

" Closes the window showing the location list from sytastic errors
map <silent><leader>lc :lcl<cr>


" File type utility settings
" -----------------------------------------------------------------------------

" Turn wrapping on for text based languages (markdown, txt...)
function! s:setWrapping()
  setlocal wrap linebreak nolist spell
endfunction

" Enable browser refreshing on web languages
function! s:setBrowserEnv()
  if has('mac')
    map <buffer> <silent><leader>r :RRB<cr>
  endif
endfunction

" Sort CSS selectors and allow for browser refresh
function! s:setCSS()
  call s:setBrowserEnv()
endfunction

" Setup specific options for markdown
function! s:setMarkdown()
  call s:setWrapping()
  call s:setBrowserEnv()
  au! BufWritePost *.md,*.markdown,*.mkd :MDP
endfunction


" File handling and settings
" -----------------------------------------------------------------------------

if !exists("autocmd_loaded_dr_vimfiles_ilzgh")
  let autocmd_loaded_dr_vimfiles_ilzgh = 1

  " Reload .vimrc after it or vimrc.local been saved
  au! BufWritePost .vimrc source %
  au! BufWritePost .vimrc.local source ~/.vimrc

  " File type settings on load
  au BufRead,BufNewFile *.scss set filetype=scss
  au BufRead,BufNewFile *.m*down set filetype=markdown
  au BufRead,BufNewFile *.as set filetype=actionscript
  au BufRead,BufNewFile *.json set filetype=json

  " Call the file type utility methods
  au BufRead,BufNewFile *.txt call s:setWrapping()
  au BufRead,BufNewFile *.md,*.markdown,*.mkd call s:setMarkdown()
  au BufRead,BufNewFile *.css,*.scss call s:setCSS()
  au BufRead,BufNewFile *.html,*.js,*.haml,*.erb call s:setBrowserEnv()

  " Enable autosave
  au FocusLost * :wa

  " Enable omnicomplete for supported filetypes
  autocmd FileType * if exists("+completefunc") && &completefunc == "" | setlocal completefunc=syntaxcomplete#Complete | endif
  autocmd FileType * if exists("+omnifunc") && &omnifunc == "" | setlocal omnifunc=syntaxcomplete#Complete | endif

endif



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


" !- See the statusline plugin for status line settings...

