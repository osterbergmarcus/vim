 " Search git files in project
nnoremap <leader>f :GFiles<cr>

" clear search results
nnoremap <leader>sc :noh<cr>

" Show file tree
nnoremap <leader>e :NERDTreeToggle<cr>

" close window
nnoremap <C-q> :q<cr>
inoremap <C-q> <esc>:q<cr>

" Write
noremap <C-s> :w<cr>
inoremap <C-s> <esc>:w<cr>

" select all lines
nnoremap <leader>a ggVG

" edit nvim config
nnoremap <leader>conf :edit ~/.config/nvim/

" buffer
nnoremap <leader><Tab> :e#<cr> " switch to last buffer
nnoremap <leader>bb :Buffers<cr>

" select word
nnoremap <leader>d viw

" remove word
nnoremap <C-d> ciw

" Git revert line
nnoremap <leader>hu :GitGutterRevertHunk<cr>

" navigate between tabs
nnoremap <C-l> gt

" find file in file tree
nnoremap <leader>r :NERDTreeFind<cr>
