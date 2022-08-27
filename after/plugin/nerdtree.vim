nnoremap <leader>h :NERDTree<CR>
map <silent> <leader>n :NERDTreeToggle<CR>
map <leader>r :NERDTreeFind<cr>



let g:NERDTreeIgnore = ['^node_modules$']
" close nerd tree if it is the last buffer"
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') && v:this_session == '' | NERDTree | endif
