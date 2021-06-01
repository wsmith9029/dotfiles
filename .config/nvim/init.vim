source $HOME/.config/nvim/plug-config/coc.vim

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number
set relativenumber

set mouse=a
set scrolloff=2

set nohlsearch

set nocompatible

call plug#begin()

Plug 'sheerun/vim-polyglot'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/indentLine'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'haishanh/night-owl.vim'
Plug 'ap/vim-css-color'
call plug#end()

set background=dark
colorscheme palenight

if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

if (has("syntax"))
  syntax on
endif

let g:palenight_terminal_italics=1
let g:airline_powerline_fonts = 1
let g:coc_global_extensions = ['coc-clangd', 'coc-css', 'coc-git', 'coc-html', 'coc-htmldjango', 'coc-java', 'coc-json', 'coc-omnisharp', 'coc-pyright', 'coc-sh', 'coc-snippets', 'coc-sql', 'coc-tsserver', 'coc-xml', 'coc-yaml']

map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

autocmd BufWritePre * %s/\s\+$//e
" Removes Whitespace from eol
