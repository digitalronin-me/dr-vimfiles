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


" Visually select the text that was last edited/pasted
nmap gV `[v`]

" Leader mapping
" -----------------------------------------------------------------------------

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

" Opens an edit command with the path of the currently edited file filled in
map <leader>e :e <C-R>=expand("%:p:h") . "/" <cr>

" Inserts the path of the currently edited file into a command - Command mode: Ctrl+P
cmap <C-P> <C-R>=expand("%:p:h") . "/" <CR>

" Closes the window showing the location list from sytastic errors
map <silent><leader>lc :lcl<cr>


" !- See the statusline plugin for status line settings...

