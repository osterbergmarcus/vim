let g:LanguageClient_serverCommands = {
	\ 'rust': ['rustup', 'run', 'nightly', 'rls'],
	\ 'javascript.jsx.flow': ['flow-language-server', '--stdio'],
	\ 'javascript.jsx': ['flow-language-server', '--stdio'],
	\ 'typescript': ['typescript-language-server'],
\ }

" Automatically start language servers.
let g:LanguageClient_autoStart = 1
