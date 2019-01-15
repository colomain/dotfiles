nmap <F3> i<C-R>=strftime("### %d/%m/%Y (%A)")<CR><Esc>
imap <F3> <C-R>=strftime("### %d/%m/%Y (%A)")<CR>

set shiftwidth=2
set tabstop=2

let g:spf13_no_big_font=1

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" vim-sessiogccn
:let g:session_autosave = 'yes'
:let g:session_autoload = 'yes'

" Quickly open a markdown buffer for scribble
map <leader>x :e /media/data/home/jmmartinez/Dropbox/Trabajo/bitacora_trabajo.md<cr>

:set relativenumber
:setl number

" Format json
nmap =j :%!python -m json.tool<CR>

" Autogenerar pdf desde adoc al guardar
:autocmd BufWritePost *.adoc !asciidoctor-pdf %

"" Clone paragraph with cp. This will copy the paragraph your cursor is on then
"" paste a copy of it just below.
noremap cp yap<S-}>p

"" Align current paragraph
noremap <leader>a =ip

"" Quit files with Leader + q
noremap <leader>q :q<cr>


"" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e  $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

"" change : with ; for commands
nnoremap ; :
" nnoremap : ;

" Copy-Paste desde el clipboard del sistem
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
