call plug#begin('~/.config/nvim/plugged')

" Colour Schemes
Plug 'morhetz/gruvbox'

" Utility
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary' 
Plug 'dhruvasagar/vim-table-mode'

" Zig
Plug 'ziglang/zig.vim'

call plug#end()

syntax enable
colorscheme gruvbox
set background=dark
hi Normal guibg=NONE ctermbg=NONE

set showmatch

set shiftwidth=2
set tabstop=2

set relativenumber number
set scrolloff=10

set breakindent
set formatoptions+=l
set lbr

set hlsearch incsearch
set ignorecase smartcase

set foldmethod=indent
nnoremap <space> za

nnoremap <Leader>tm :TableModeToggle

set wildmenu

set lazyredraw
set updatetime=250

set spelllang=en_gb
autocmd FileType text setlocal spell
autocmd FileType text inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
autocmd FileType Markdown inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" autocmd FileType javascript BufWritePre <Plug>(prettier-format)

set mouse=a

set list
set listchars=tab:→\ ,space:·

python3 << EOL
import vim

def ExecuteSelectedLine(l1, l2):
    for i in range(l1-1,l2):
        print(">>> " + vim.current.buffer[i])
        print(eval(vim.current.buffer[i],globals()))
EOL
command! -range Eval <line1>,<line2> python3 ExecuteSelectedLine(<line1>, <line2>)
