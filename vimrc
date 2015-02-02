filetype plugin indent on
syntax on
execute pathogen#infect()

" Disable the arrow keys to get used to hjkl
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

":set expandtab "use spaces instead of tabs
:set tabstop=4
:set shiftwidth=4
:set softtabstop=4

:set number "show line numbersk

let mapleader=" "
:map <Leader>r :!\./%<CR>
:map <Leader>< :s/</\&lt;<CR>
:map <Leader>> :s/>/\&gt;<CR>

" Move between buffers
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>    
nnoremap <silent> [B :bfirst<CR> 
nnoremap <silent> ]B :blast<CR>

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Toggle spell checking on and off with `,s`
nmap <silent> <leader>s :set spell!<CR>

" Set region to British English
" set spelllang=en_gb

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif
nmap <leader>v :tabedit $MYVIMRC<CR>

