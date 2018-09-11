let g:prettier#exec_cmd_async = 1
let g:prettier#quickfix_enabled = 0
let g:prettier#autoformat = 0
" print spaces between brackets
let g:prettier#config#bracket_spacing = 'true'
autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx PrettierAsync
