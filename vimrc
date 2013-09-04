call pathogen#infect()             " add .vim/bundle subdirs to runtime path

" automatic, language-dependent indentation, syntax coloring and other functionality
filetype plugin indent on
syntax on

set autoindent
set autoread                       " reload files when changed on disk, i.e. via `git checkout`
set backspace=2                    " fix broken backspace in some setups
set backupcopy=yes                 " see :help crontab
set cc=80                          " show border at 80 cols
set clipboard=unnamed              " yank and paste with the system clipboard
set cursorline                     " highlight current line
set directory-=.                   " don't store swapfiles in the current directory
set encoding=utf-8
set expandtab                      " expand tabs to spaces
set guifont=Monaco:h12             " default font
set guioptions-=T                  " don't show toolbar
set hlsearch                       " highlight search strings
set ignorecase                     " case-insensitive search
set incsearch                      " search as you type
set laststatus=2                   " always show statusline
set list                           " show trailing whitespace
set listchars=tab:▸\ ,trail:▫
set nocompatible                   " just in case system-wide vimrc has set this otherwise
set nojoinspaces                   " don't autoinsert two spaces after '.', '?', '!' for join command
set number                         " show line numbers
set ruler                          " show where you are
set scrolloff=3                    " show context above/below cursorline
set shiftwidth=2                   " normal mode indentation commands use 2 spaces
set shortmess+=A                   " ignore annoying swapfile messages
set shortmess+=I                   " no splash screen
set showcmd
set smartcase                      " case-sensitive search if any caps
set softtabstop=2                  " insert mode tab and backspace use 2 spaces
set tabstop=8                      " actual tabs occupy 8 characters
set wildignore+=log/**,node_modules/**,target/**,tmp/**,*.rbc,*.o,.git,*.pyc
set wildmenu                       " show a navigable menu for tab completion
set wildmode=longest,list,full

" theme
set background=dark
color solarized

" disable vim bells
set noerrorbells visualbell t_vb=

map <leader>l :Align
nmap <leader>a :Ack
nmap <leader>b :CtrlPBuffer<CR>
nmap <leader>d :NERDTreeToggle<CR>
nmap <leader>f :NERDTreeFind<CR>
nmap <leader>t :CtrlP<CR>
nmap <leader>T :CtrlPClearCache<CR>:CtrlP<CR>
nmap <leader>] :TagbarToggle<CR>
nmap <leader><space> :call whitespace#strip_trailing()<CR>
nmap <leader>g :GitGutterToggle<CR>
nmap <leader>c <Plug>Kwbd
map <silent> <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" plugin settings
let g:ctrlp_match_window = 'order:ttb,max:10'
let g:NERDSpaceDelims=1

" md is markdown
autocmd BufRead,BufNewFile *.md set filetype=markdown

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" fix cursor in tmux
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" disable escape and arrow keys
imap <ESC> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
imap <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
map <up> <nop>

" use hjkl keys to switch tabs
map <C-h> gT<CR>
map <C-l> gt<CR>
map <C-n> :tabnew<CR>

" custom status line
set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)

let g:ctrlp_prompt_mappings = { 'AcceptSelection("e")': ['<c-t>'], 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'] }
