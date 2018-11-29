"Automatically download vim-plug if its not installed

if empty(glob('~/.vim/autoload/plug.vim'))
      silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
      autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
"This section contains the plugin istalled with the vim pluginsManager plug

"To install the pluings, execute vim and enter :plugInstall

call plug#begin('~/.vim/plugged')

"Make sure to use single quotes
" Shorthand notation; fetches https://github.com/ + github repository
" containing the vim setup

"Install the badwolf colorscheme
Plug 'sjl/badwolf'

"install the vim-sensible plugin with some default changes to vim (mostly sets)
Plug 'tpope/vim-sensible'

"The NERDTree is a file system explorer for the Vim editor. Using this plugin,
"users can visually browse complex directory hierarchies, quickly open files
"for reading or editing, and perform basic file system operations
"Install the NerdTree plugin.
Plug 'scrooloose/nerdtree'

"Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
Plug 'ctrlpvim/ctrlp.vim'

"A light and configurable statusline/tabline plugin for Vim
Plug 'itchyny/lightline.vim'

"A better vim Json highlighter
Plug 'elzr/vim-json'

"Plugin for the python mode
Plug 'python-mode/python-mode', { 'branch': 'develop' }

"plugin for auto pair
Plug 'jiangmiao/auto-pairs'

"Initialize plugin system
call plug#end()

"NerdTree Config
"Open NerdTree with Ctrl+n
map <C-n> :NERDTreeToggle<CR>

"Automatically close vim if exit command is executed and nerdtree is the only
"other tab open

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"Configuration for the json highlighter
au! BufRead,BufNewFile *.json set filetype=json

augroup json_autocmd
    autocmd!
    autocmd FileType json set autoindent
    autocmd FileType json set formatoptions=tcq2l
    autocmd FileType json set textwidth=200 shiftwidth=2
    autocmd FileType json set softtabstop=2 tabstop=4
    autocmd FileType json set expandtab
augroup END

"Configuration for python-mode
filetype plugin on
filetype indent on
let g:pymode_python = 'python3'

"My prefered settings
let mapleader = ","
map <Space> ,
syntax on
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set rnu
set nu
colo badwolf
set ttyfast
set hlsearch
set showmatch
set showcmd
set wildmenu
set wildmode=longest:list,full
set clipboard^=unnamed
set mouse=
set showmode

noremap 0 ^
noremap ^ 0

hi MatchParen ctermbg=blue guibg=blue

"map :q! to :q<CR> because when we quit without saving all changes must be
"undone
noremap <leader>q :q!<CR>
noremap <leader>w :w<CR>
noremap <leader>wq :wq<CR>

"mapping to switch panes faster
noremap <leader>h <C-w>h
noremap <leader>j <C-w>j
noremap <leader>k <C-w>k
noremap <leader>l <C-w>l
