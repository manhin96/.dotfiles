"This section contains the plugin istalled with the vim pluginsManager plug

"To install the pluings, execute vim and enter :plugInstall

call plug#begin('~/.vim/plugged')

"Make sure to use single quotes
" Shorthand notation; fetches https://github.com/ + github repository
" containing the vim setup

"install the vim-sensible plugin with some default changes to vim (mostly sets)
Plug 'tpope/vim-sensible'

"The NERDTree is a file system explorer for the Vim editor. Using this plugin,
"users can visually browse complex directory hierarchies, quickly open files
"for reading or editing, and perform basic file system operations
"Install the NerdTree plugin.
Plug 'scrooloose/nerdtree'



"Initialize plugin system
call plug#end()

"NerdTree Config
"Open NerdTree with Ctrl+n
map <C-n> :NERDTreeToggle<CR>

"Automatically close vim if exit command is executed and nerdtree is the only
"other tab open

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


"My prefered settings
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

hi MatchParen ctermbg=red guibg=red

"Use the javascript syntax for json files
"autocmd BufNewFile,BufRead *.json setfiletype javascript
