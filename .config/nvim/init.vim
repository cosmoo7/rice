" Sourcing from vim config
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

" Installed Plugins
call plug#begin()
Plug 'vim-airline/vim-airline-themes'
Plug 'dhruvasagar/vim-marp'
Plug 'junegunn/vim-plug'
Plug 'https://github.com/tanvirtin/monokai.nvim.git'
Plug 'https://github.com/catppuccin/nvim.git'
Plug 'bennypowers/nvim-regexplainer'
Plug 'mfussenegger/nvim-dap-python'
Plug 'mfussenegger/nvim-dap'
Plug 'sbdchd/neoformat'
Plug 'mcauley-penney/tidy.nvim'
Plug 'vim-airline/vim-airline'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-lua/completion-nvim'
Plug 'terrortylor/nvim-comment' 
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'windwp/nvim-autopairs'
call plug#end()
:color slate
highlight MatchParen ctermbg=black ctermfg=lightblue guibg=black guifg=aqua
" Keybinds
nnoremap <S-Down> :move +1<CR>
nnoremap <S-Up> :move .-2<CR>
noremap <A-Tab> :tabnext<CR>
noremap <C-N> :tabnew<CR>
let g:airline_powerline_fonts = 1
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h14
nmap <C-/> :Commentary<CR>
nnoremap <leader>r :source ~/.config/nvim/init.vim<CR>
vnoremap <S-Del> :normal diw<CR>
" Enable tabs if there a above 2
set showtabline=1
let &t_SI = "\e[5 q"
let &t_EI = "\e[2 q"
noremap <silent> <expr> gt tabpagenr() == tabpagenr('$') ? \
    \ ':tabfirst' : ':tabnext'
  set switchbuf=useopen,usetab
