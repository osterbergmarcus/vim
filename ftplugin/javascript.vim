let g:javascript_plugin_flow = 1

" enable jsx everywhere
let g:jsx_ext_required = 0

" mappings
nmap gd :call LanguageClient_textDocument_definition()<CR>
nmap <leader>h :call LanguageClient_textDocument_hover()<CR>
nmap <leader>ls :call LanguageClient_textDocument_documentSymbol()<CR>

" imap <c-x><c-j> call fzf#vim#complete#path("ag -l -g ''") 
inoremap <expr> <c-x><c-j> CompleteJavascriptPath()
func! CompleteJavascriptPath()
    " call fzf#vim#complete#path("find . -path '*/\.*' -prune -o -print \| sed '1d;s:^..::'")
    call fzf#vim#complete#path("ag -l -g ''  \| sed 's/.js//g'")
    return ""
  endfu

let g:LanguageClient_serverCommands = {
	\ 'javascript': ['flow-language-server', '--stdio'],
	\ 'javascript.jsx': ['flow-language-server', '--stdio'],
	\ 'javascript.jsx.flow': ['flow-language-server', '--stdio'],
	\}

