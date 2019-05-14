set nocompatible		" Use Vim settings, rather than Vi settings

"" Vundle begin
filetype off			" required
" set rtp+=~/.config/nvim/bundle/Vundle.vim
set rtp+=~/.config/nvim/site/autoload/plug.vim
"
" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/plugged')
" call vundle#begin()
"" let Vundle manager Vundle, required
" Plug 'VundleVim/Vundle.vim'
" Plug 'mru.vim'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'tpope/vim-commentary'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
Plug 'vim-airline/vim-airline'
Plug 'plasticboy/vim-markdown'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'joshdick/onedark.vim'
Plug 'natebosch/vim-lsc'
Plug 'derekwyatt/vim-scala'
Plug 'sheerun/vim-polyglot'
Plug 'trevordmiller/nova-vim'
Plug 'neoclide/coc.nvim', {'do': './install.sh nightly'}


Plug 'ensime/ensime-vim', { 'do': ':UpdateRemotePlugins' }
Plug 'roxma/nvim-yarp'
" Plugin 'cloudhead/neovim-fuzzy'

"Code completion with Deoplete - enabled by ensime
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

"" All plugins must be added before the following line
" call vundle#end()		" required
call plug#end()

filetype plugin indent on " require

let mapleader = ","

"""""""""""""""""""""""""""""""
"" => MRU plugin
"""""""""""""""""""""""""""""""
" let MRU_Max_Entries = 400
" map <leader>f :MRU<cr>
map <leader>f :LeaderfBuffer<cr>
let g:Lf_ShortcutF = '<C-P>'

"" vim-sessiogccn
:let g:session_autosave = 'yes'
:let g:session_autoload = 'yes'

"" vim-markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal = 0
" set conceallevel=2

" deoplete
let g:deoplete#enable_at_startup = 1
" let g:deoplete#sources._=['buffer', 'member', 'tag', 'file', 'omni', 'ultisnips'] 
let g:deoplete#omni#input_patterns={} 
let g:deoplete#omni#input_patterns.scala='[^. *\t]\.\w*'

" fuzzy finder with ctrl-p
" nnoremap <C-p> :FuzzyOpen<CR>

"Linting with neomake
let g:neomake_sbt_maker = {
      \ 'exe': 'sbt',
      \ 'args': ['-Dsbt.log.noformat=true', 'compile'],
      \ 'append_file': 0,
      \ 'auto_enabled': 1,
      \ 'output_stream': 'stdout',
      \ 'errorformat':
          \ '%E[%trror]\ %f:%l:\ %m,' .
            \ '%-Z[error]\ %p^,' .
            \ '%-C%.%#,' .
            \ '%-G%.%#'
     \ }
let g:neomake_enabled_makers = ['sbt']
let g:neomake_verbose=3
" Neomake on text change
" autocmd InsertLeave,TextChanged * update | Neomake! sbt

" NerdTree options
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark 
map <leader>nf :NERDTreeFind<cr>

" vim-airline
let g:airline_theme='onedark'

" Configuration for vim-scala
au BufRead,BufNewFile *.sbt set filetype=scala
autocmd FileType json syntax match Comment +\/\/.\+$+

" Configuration for vim-lsc
let g:lsc_enable_autocomplete = v:false
let g:lsc_server_commands = {
  \  'scala': {
  \    'command': 'metals-vim',
  \    'log_level': 'Log'
  \  }
  \}
let g:lsc_auto_map = {
  \  'GoToDefinition': 'gd',
  \}

set backspace=indent,eol,start " Allow backspacing over indention, line breaks and insertion start.
set history=1000		" Set bigger history of executed commands
set softtabstop=2		" Indent by 2 spaces when hitting tab
set shiftwidth=2		" Indent by 4 spaces when auto-indenting
set tabstop=2			" Show existing tab with 4 spaces width
"" filetype indent on		" Enable indenting for files
set autoindent			" Enable auto indenting
set number				" Enable line numbers
set relativenumber		" Enable line relative numbers
" set mouse=a				" Enable mouse for scrolling and resizing
" colorscheme onedark		" Set nice looking colorscheme
colorscheme nova
set background=dark		" Use colors that suit a dark background
set noswapfile			" Disable swap files
set nobackup			" Disable backup files
set laststatus=2		" Show status line always
set ruler
set wildmenu			" Show command line's tab complete options
set hidden				" Allow to have buffer without saving
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

"" Search options
set incsearch			" Find the next match as we type the search
set hlsearch			" Highlight searches by default
set ignorecase			" Ignore case when searching...
set smartcase			" ... unless you type a capital

"" Text rendering options
set encoding=utf-8		" Use an enconding that supports Unicode
syntax on				" Enable syntax highlighting

"" Miscellaneous options
set confirm				" Display a confirmation dialog when closing an unsaved file
set nomodeline			" Ignore file's mode lines; use vimrc configuration instead

"" My configs

"" Save with Leader w
noremap <Leader>w <Esc>:w<CR>
inoremap <Leader>w <C-c>:w<CR>

"" Clone paragraph with cp. This will copy the paragraph your cursor is on then
"" paste a copy of it just below.
noremap cp yap<S-}>p

"" Align current paragraph
noremap <leader>a =ip

"" Quit files with Leader + q
noremap <leader>q :q<cr>

"" Control direction to change panes
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k

"" Insert current date with F3
nmap <F3> i<C-R>=strftime("### %d/%m/%Y (%A)")<CR><Esc>
imap <F3> <C-R>=strftime("### %d/%m/%Y (%A)")<CR>

"" Disable arrows (use vim keys hjkl instead)
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"" Copy-Paste desde el clipboard del sistema
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

"" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
"" nmap <silent> <leader>sv :source ~/.config/nvim/init.vim<CR>

"" Quickly edit the i3 config
nmap <silent> <leader>e3 :e ~/.i3/config<CR>

"" change : with ; for commands
nnoremap ; :
nnoremap ;; ;

"" Disable search highlighting
nmap <silent> ,<CR> :nohlsearch<CR>

"" This lets you save a file that required sudo privileges with w!!
"cmap w!! w !sudo tee % >/dev/null

"" Toggle paste mode on and off:
map <leader>pp :setlocal paste!<cr>

"" Switch CWD to the directory of the open buffer:
map <leader>cd :cd %:p:h<cr>:pwd<cr>

""====[ Swap v and CTRL-V, because Block mode is more useful that Visual mode "]======

"" nnoremap    v   <C-V>
"" nnoremap <C-V>     v

"" vnoremap    v   <C-V>
"" vnoremap <C-V>     v

