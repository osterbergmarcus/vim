 " Search git files in project
nnoremap <C-f> :GFiles<cr>

" Grep for files on FS
nnoremap <leader>f :Ag<Space>

" clear search results
nnoremap <CR> :nohlsearch<cr><cr>

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

" navigate between tabs
nnoremap <C-l> gt

" find file in file tree
nnoremap <leader>r :NERDTreeFind<cr>

" window controlers
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k

" macros
nnoremap Q @q
vnoremap Q :norm @q<cr>

" navigate between errors
"nmap <silent> <C-k> <Plug>(ale_previous_wrap)
"nmap <silent> <C-j> <Plug>(ale_next_wrap)

" language server
nmap gd :call LanguageClient_textDocument_definition()<CR>
nmap <leader>h :call LanguageClient_textDocument_hover()<CR>
map <leader>ls :call LanguageClient_textDocument_documentSymbol()<CR>
