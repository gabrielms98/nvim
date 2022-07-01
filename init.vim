set number
set relativenumber
set autoindent
set tabstop=2
set shiftwidth=2
set smarttab
set softtabstop=4
set mouse=a
set ma
set expandtab
set clipboard=unnamedplus
set whichwrap=<,>,h,l
set nowrap
set scrolloff=8
" set winbar='%m\ %f'
" " Nice menu when typing `:find *.py`
set wildmode=longest,list,full
set wildmenu
" Ignore files
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*

set cmdheight=1

filetype indent on
call plug#begin()
Plug 'https://tpope.io/vim/fugitive.git'
Plug 'jiangmiao/auto-pairs'
Plug 'Quramy/tsuquyomi'

" Telescope
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-telescope/telescope.nvim'

Plug 'ap/vim-css-color' 
Plug 'HerringtonDarkholme/yats.vim'
Plug 'morhetz/gruvbox'
Plug 'sbdchd/neoformat'
Plug 'ryanoasis/vim-devicons'

Plug 'mhinz/vim-signify'
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
Plug 'eslint/eslint'

" Lsp nvim
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'
" Plug 'hrsh7th/nvim-compe'
Plug 'folke/trouble.nvim'
" Plug 'tami5/lspsaga.nvim'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'tzachar/cmp-tabnine', { 'do': './install.sh' }
Plug 'onsails/lspkind.nvim'

" Harpoooooon
Plug 'ThePrimeagen/harpoon', {'branch': 'master'}

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'romgrk/nvim-treesitter-context'
Plug 'nvim-treesitter/playground'

" Bufferlines
Plug 'kyazdani42/nvim-web-devicons' 

" Jinja highlighting
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'mattn/emmet-vim'

" rust
Plug 'rust-lang/rust.vim'
call plug#end()

" let g:netrw_liststyle = 3

" Move to file when created
" set autochdir

set encoding=utf8

" Seting color scheme
colorscheme gruvbox
syntax enable
set shortmess+=c

if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
    set termguicolors
endif

" always show signcolumns
set signcolumn=yes

" Prettier format on save 
let g:neoformat_enabled_python = ['autopep8', 'yapf', 'docformatter']
autocmd BufWritePre *.js Neoformat

set splitright

let g:neoformat_try_node_exe = 1

" Let nvim use python
let g:python3_host_prog="/opt/homebrew/bin/python3"
let g:pymode_indent = 0

" Python black config
" autocmd BufWritePost *.py execute ':Black'


" Vim-signify
set updatetime=100


" inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
set shortmess+=c

augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lus require'vim.highlight'.on_yank({timeout = 40})
augroup END

function! FileParentFolder()
    let s:full_path = expand('%:p')
    let splited = split(s:full_path, "/")
    if len(splited) == 0 
      return ""
    else 
      return len(splited) >= 2 ? join([splited[-2], splited[-1]], '/') : splited[-1]
endfunction


set statusline=
" set statusline+=%{StatuslineGit()}
set statusline+=%{fugitive#statusline()}
set statusline+=\ \|
set statusline+=\ \%{FileParentFolder()}
set statusline+=%m
set statusline+=%=
set statusline+=\ %y
set statusline+=\ %l:%c
set statusline+==>%L
set statusline+=\      

" Enabling emmet only for HTML/CSS files
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
