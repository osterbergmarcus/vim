" enable jsx everywhere
let g:jsx_ext_required = 0
set hidden

autocmd BufNewFile,BufRead,BufWritePost *.js call DetectFlow()

function! DetectFlow()
  if getline(1) =~# '^\s*\/[/*]\s*@flow\>'
	setlocal filetype=javascript.jsx.flow
  end
endfunction

imap <c-x><c-j> call fzf#vim#complete#path("ag -l -g ''") 
inoremap <expr> <c-x><c-j> CompleteJavascriptPath()
func! CompleteJavascriptPath()
    " call fzf#vim#complete#path("find . -path '*/\.*' -prune -o -print \| sed '1d;s:^..::'")
    call fzf#vim#complete#path("ag -l -g ''  \| sed 's/.js//g'")
    return ""
  endfu
