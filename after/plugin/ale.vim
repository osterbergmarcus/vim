let g:ale_set_loclist = 0
let g:ale_open_list = 1
let g:ale_set_quickfix = 1
let g:ale_list_window_size = 8
let g:ale_lint_delay = 500
let g:ale_set_signs = 1
let g:ale_sign_column_always = 0
let g:ale_sign_error = '•'
let g:ale_sign_warning = '•'
let g:ale_linters = {
	\  'csh': ['shell'],
	\  'go': ['gofmt', 'golint'],
	\  'javascript': ['eslint', 'flow'],
	\  'python': ['flake8', 'mypy', 'pylint'],
	\  'rust': ['cargo'],
	\  'zsh': ['shell'],
\  }
