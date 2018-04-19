""""""""""" Nerd Tree """""""""""""
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '__pycache__', '.DS_Store']
let g:NERDTreeWinSize=35

" Shortcuts
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark
map <leader>nf :NERDTreeFind<cr>

"""""""""" syntastic """""""""""""
" Conflict with split window, check shortcuts.vim
" map <Leader>s :SyntasticToggleMode<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

""""""""""" ctrlp """""""""""""""
" map <silent> <Leader><space> :CtrlP()<CR>
" noremap <C-R> :CtrlP()<CR>
" noremap <leader>b<space> :CtrlPBuffer<cr>
let g:ctrlp_custom_ignore = '\v[\/]dist$'
let g:ctrlp_show_hidden = 1

"============= peaksea ============="
try
  colorscheme peaksea
endtry

"=============== lightline ==========="
let g:lightline = {'active':{'left':[['mode', 'paste'], ['readonly', 'relativepath', 'modified']]}}

"=================ack=================="
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

