" Pathogen
call pathogen#infect()             " add .vim/bundle subdirs to runtime path
call pathogen#helptags()           " auto update help tags for each directory in runtimepath

set nocompatible                   " just in case system-wide vimrc has set this otherwise
set backspace=2                    " make backspace work for line breaks, auto-indentation, etc
set hlsearch                       " highlight search strings
set incsearch                      " incremental search ("find as you type")
set number                         " show line numbers in gutter
set laststatus=2                   " always show status line
set autoread                       " if not changed in Vim, auto pick up changes after "git co", etc
set guioptions-=T                  " don't show toolbar
set guifont=Monaco:h12             " default font
set history=1000                   " longer search and command history (default is 20)
set backupdir=~/.vim/tmp/backup,.  " keep backup files out of the way
set directory=~/.vim/tmp/swap,.    " keep swap files out of the way
set cursorline                     " highlight current line
set nojoinspaces                   " don't autoinsert two spaces after '.', '?', '!' for join command
set wildignore+=*.o,.git           " patterns to ignore during file-navigation
set shortmess+=A                   " ignore annoying swapfile messages
set shortmess+=I                   " no splash screen

" All languages
set shiftwidth=4                   " spaces per tab (when shifting)
set shiftround                     " always indent by multiple of shiftwidth
set tabstop=4                      " spaces per tab
set expandtab                      " always use spaces instead of tabs
set smarttab                       " <tab>
set autoindent                     " auto-indent
set smartindent
set textwidth=80                   " auto-wrap at 80 cols
set cc=80                          " show border at 80 cols
nore ; :                           " make ; do the same as : for quick-typing

" Folding
set foldmethod=indent              " fold based on indent
set foldnestmax=2
set nofoldenable                   " don't fold by default
nnoremap <space> za
vnoremap <space> zf

" Automatic, language-dependent indentation, syntax coloring and other functionality
filetype indent plugin on
syntax on

" git commit messages
autocmd FileType gitcommit setlocal textwidth=72

" Remove trailing whitespace automatically
autocmd BufWritePre * :%s/\s\+$//e

" C
autocmd FileType c set tabstop=4
autocmd FileType c set shiftwidth=4

" PHP
autocmd FileType php set tabstop=2
autocmd FileType php set shiftwidth=2

" Python
autocmd FileType python set tabstop=4
autocmd FileType python set shiftwidth=4

" Ruby
autocmd FileType ruby set tabstop=2
autocmd FileType ruby set shiftwidth=2

" Color scheme
set background=dark
color solarized

" Command-T
let g:CommandTMaxHeight=10
let g:CommandTAcceptSelectionMap = '<C-t>'
let g:CommandTAcceptSelectionTabMap = '<CR>'
let g:CommandTScanDotDirectories   = 1
nnoremap <leader>f :CommandTFlush<CR>
if &term =~ "screen" || &term =~ "xterm"
    let g:CommandTCancelMap     = ['<ESC>', '<C-c>']
    let g:CommandTSelectNextMap = ['<C-n>', '<C-j>', '<ESC>OB']
    let g:CommandTSelectPrevMap = ['<C-p>', '<C-k>', '<ESC>OA']
endif

" Disable vim bells
set noerrorbells visualbell t_vb=

" Gundo
nnoremap <F5> :GundoToggle<CR>

" Use hjkl keys to switch tabs
map <c-j> gT
map <c-k> gt
map <c-h> gT
map <c-l> gt

" Highlight current line
:hi CursorLine cterm=NONE
set cursorline

" Status line
" cf the default statusline: %<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
" format markers:
"   %< truncation point
"   %n buffer number
"   %f relative path to file
"   %m modified flag [+] (modified), [-] (unmodifiable) or nothing
"   %r readonly flag [RO]
"   %y filetype [ruby]
"   %= split point for left and right justification
"   %-35. width specification
"   %l current line number
"   %L number of lines in buffer
"   %c current column number
"   %V current virtual column number (-n), if different from %c
"   %P percentage through buffer
"   %) end of width specification
set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)

" Disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
