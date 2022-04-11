:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set ma
:set expandtab

filetype indent on
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
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
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

" Plug 'dense-analysis/ale'
Plug 'sbdchd/neoformat'
Plug 'mhinz/vim-signify'

" Lsp nvim
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'

"Treesitter
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'romgrk/nvim-treesitter-context'

" Bufferlines
Plug 'kyazdani42/nvim-web-devicons' 
Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
call plug#end()

" Move to file when created
set autochdir

set encoding=utf8

" Seting color scheme
colorscheme gruvbox
syntax enable
set termguicolors
set shortmess+=c
set background=dark
let g:gruvbox_contrast_dark = 'hard'

" always show signcolumns
set signcolumn=yes
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
\ pumvisible() ? "\<C-n>" :
\ <SID>check_back_space() ? "\<TAB>" :
\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
let col = col('.') - 1
return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Prettier format on save 
autocmd BufWritePre,TextChanged,InsertLeave *.js Neoformat

set splitright

" ALE config
let b:ale_fixers = {'javascript': ['eslint']}
let b:ale_fixers = {'python': ['autopep8']}

" Vim airline
let g:airline#extensions#branch#enable=1

" Let nvim use python
let g:python3_host_prog="/opt/homebrew/bin/python3"
let g:pymode_indent = 0

" Python black config
" autocmd BufWritePost *.py execute ':Black'


" Vim-signify
:set updatetime=100

" LSP config
lua require'lspconfig'.pyright.setup{}
lua require'lspconfig'.bashls.setup{}

" Telescope 
" Find files using Telescope command-line sugar.
nnoremap ff <cmd>Telescope git_files<cr>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Bufferline
lua require("bufferline").setup{}
