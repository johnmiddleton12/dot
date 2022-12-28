set nocompatible
filetype off 

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Navigating between tmux & vim panes
Plugin 'christoomey/vim-tmux-navigator'

" JetBrains Theme
Plugin 'doums/darcula'

" Track time in editor
Plugin 'wakatime/vim-wakatime'

" Easier commenting
Plugin 'preservim/nerdcommenter'

" File tree viewer
Plugin 'preservim/nerdtree'

" LSPs
"Plugin 'valloric/youcompleteme'
"Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

" Copilot
Plugin 'github/copilot.vim'

" Fuzzy Finder
Plugin 'nvim-lua/plenary.nvim'
Plugin 'nvim-telescope/telescope.nvim'

call vundle#end()

filetype plugin indent on

syntax on

set shiftwidth=4
set tabstop=4
set expandtab

colorscheme darcula

set number

"set term=screen-256color

let g:NERDCreateDefaultMappings = 0
nmap <C-_> <plug>NERDCommenterToggle

set guicursor=

tnoremap <Esc> <C-\><C-n>

let mapleader = ","
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>

nnoremap <leader>t :NERDTreeToggle<cr>

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)
" Map ,F to format using prettier
nnoremap <leader>F :<C-u>CocCommand prettier.formatFile<cr>
"nnoremap <leader>do <Plug>(coc-codeaction)

nnoremap O O<Esc>

lua << EOF require('telescope').setup{ defaults = { file_ignore_patterns = {"node_modules", "package-lock"} } } EOF
