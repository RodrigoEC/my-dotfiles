call plug#begin() 
" Themes
Plug 'sainnhe/sonokai'
" Languages format text
Plug 'sheerun/vim-polyglot'
Plug 'terryma/vim-multiple-cursors'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'

Plug 'ap/vim-buftabline'
Plug 'tpope/vim-vinegar'
Plug 'panickbr/neovim-ranger'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
call plug#end()

let g:sonokai_style = 'maia'
let g:sonokai_better_performance = 1
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 1

colorscheme sonokai

set hidden
set number
set relativenumber
set inccommand=split

let mapleader="\<space>"

let g:deoplete#enable_at_startup = 1

nnoremap <leader>; a;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source~/.config/nvim/init.vim<cr>

" Plugins
nnoremap <leader>pi :PlugInstall<cr>
nnoremap <leader>pr :Prettier<cr>

" File Navigation
nnoremap <leader>q  :q<cr>
nnoremap <leader>w  :w<cr>
nnoremap <leader>vs :vsplit<cr>
nnoremap <leader>hs :split<cr>
nnoremap <leader>sc :source %<cr>

" Windows control
nnoremap <Up> :wincmd k<CR>
nnoremap <Down> :wincmd j<CR>
nnoremap <C-Left> :wincmd h<CR>
nnoremap <C-Right> :wincmd l<CR>

" Buffer control
nnoremap <Right> :bnext<CR>
nnoremap <Left> :bprev<CR>
nnoremap <C-q> :bd<CR>

" Fuzzy finder
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)


nnoremap <c-p> :Files<cr>
nnoremap <leader>f :Ag<cr>
