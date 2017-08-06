nmap <Leader>f :CtrlP<CR>
nmap <Leader>b :CtrlPBuffer<CR>
nmap <Leader>r :CtrlPMRU<CR>

let g:ctrlp_match_current_file = 1
let g:ctrlp_user_command = {
\   'types': {
\     1: ['.git', 'cd %s && git ls-files -cdmo --exclude-standard | sort | uniq']
\   },
\   'fallback': 'find %s -type f'
\ }
