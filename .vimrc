" Set line numbers
set number
set relativenumber
set numberwidth=5
highlight LineNrAbove ctermfg=grey
highlight LineNrBelow ctermfg=grey

" Set default tab behavior (spaces instead of tabs)
set expandtab
set tabstop=2           " Number of spaces a tab character represents
set shiftwidth=2        " Number of spaces for each indentation level
set softtabstop=2       " Number of spaces a Tab counts for while editing

" Enable auto-indentation
set smartindent
set smarttab

" Enable search highlights and ignore case
set ignorecase          " Ignore case when searching
set smartcase           " Override ignorecase if uppercase is used
set incsearch           " Show matches as you type
set hlsearch            " Highlight search matches

" Enable mouse support
set mouse=a

" Show matching parenthesis/brackets
set showmatch

" Display line and column number in status line
set ruler

" Enable syntax highlighting
syntax enable

" Set a vertical line at the 80th character column
set colorcolumn=80
highlight ColorColumn ctermbg=235

" Enable auto-completion
set completeopt=menu,menuone,noselect

" Show invisible characters (like spaces, tabs, etc.)
set list
set listchars=tab:→\ ,trail:·
set fillchars=eob:\ 

" Enable auto-saving of files (for changes)
set autowrite
set autoread

" Turn off swap file creation (optional)
set noswapfile

" Better performance with large files
set lazyredraw

" Disable error bells and screen flash
set noerrorbells
set novisualbell
set t_vb=

" custom command to remove carriage return (displayed as ^M)
command! RemoveCR %s/\r//g

" converts tabs to spaces
command! Tabs4space %s/\t/    /g
command! Tabs2space %s/\t/  /g

" sets space indentation
command! Tabs2 set et ts=2 sw=2 sts=2
command! Tabs4 set et ts=4 sw=4 sts=4

" Normal mode keybindings
nnoremap <C-j> <C-d>
nnoremap <C-k> <C-u>
nnoremap <C-l> W
nnoremap <C-h> B
nnoremap <C-Tab> gt
nnoremap <C-S-Tab> gT
nnoremap <Esc> :nohlsearch<CR>
nnoremap dd "_dd
nnoremap p "+p
nnoremap P "+P
nnoremap <leader>rc :RemoveCR<CR>
nnoremap <C-n> :tabnew<CR>:e.<CR>
nnoremap <C-w> :q<CR>
nnoremap <Tab> :tabnext<CR>
nnoremap <S-Tab> :tabprev<CR>

" Insert mode keybindings
inoremap <C-S> <Esc><cmd>w<CR>a
inoremap <C-E> <Esc>A

" Visual mode keybindings
vnoremap <Tab> >
vnoremap <S-Tab> <
vnoremap <C-l> W
vnoremap <C-h> B
vnoremap <C-e> $
vnoremap d "_d
vnoremap x "+x
vnoremap y "+y
