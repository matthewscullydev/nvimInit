
call plug#begin('~/.vim/plugged')
Plug 'ludovicchabant/vim-gutentags'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'cohama/lexima.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'glepnir/lspsaga.nvim'
Plug 'joshdick/onedark.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
call plug#end()

set nu
syntax on
colorscheme onedark
set shiftwidth=4 softtabstop=4 expandtab
set termguicolors
set autoindent
inoremap <Alt> <Right>
set tabstop=4
  inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
  inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
let g:gutentags_project_root = ['.gutctags']
let g:gutentags_add_default_project_roots = 0

hi Normal guibg=#111111 ctermbg=black                     
"hi Normal guibg=NONE ctermbg=NONE
let t:is_transparent = 1                     
function! Toggle_transparent_background()                      
  if t:is_transparent == 0                   
    hi Normal guibg=#111111 ctermbg=black                     
    let t:is_transparent = 1
  else
    hi Normal guibg=NONE ctermbg=NONE                    
    let t:is_transparent = 0                        
  endif                    
endfunction               
nnoremap <F1> :call Toggle_transparent_background()<CR>
noremap <C-n> :tabnew<CR>
noremap <C-w> :tabc<CR>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
set clipboard+=unnamedplus
