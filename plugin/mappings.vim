 " Search git files in project
nnoremap <leader>o :GFiles<cr>

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

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use <c-space> for trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> for confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` for navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

