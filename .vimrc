"  Specifies Directory for Plugins and begins call
call plug#begin('~/.vim/plugged')
" Begin plugging plugins (what a sentence)
Plug 'preservim/nerdtree'
" CoC is an autocomplete engine designed for vim. However, it conflicts with
" YouCompleteMe, which seems to be a better overall engine. Disable/Enable at
" will
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ycm-core/YouCompleteMe'
" Remember to run the install.py in ~/.vim/plugged to install YCM, see the
" Github page for more info.
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdcommenter'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'scrooloose/syntastic'
Plug 'ap/vim-css-color'
" Ends plug call
call plug#end()
" Allows jk to be bound to escape, better ergonomics 
inoremap jk <ESC>
" Sets NERDTree Toggle to CTRL+N
nmap <C-n> :NERDTreeToggle<CR>
" Sets color to dracula, plugged at line 13 above
colorscheme dracula
" Turn hybrid numbers on
:set number relativenumber
" Closes NerdTree if it's the only tab open when :q is entered
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
