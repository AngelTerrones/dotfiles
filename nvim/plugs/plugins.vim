" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " theme
    Plug 'joshdick/onedark.vim'
    " airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Range
    Plug 'kevinhwang91/rnvimr'
    " startify
    Plug 'mhinz/vim-startify'
    " Tabs
    Plug 'pacha/vem-tabline'
    Plug 'ryanoasis/vim-devicons'
    " git
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    " Whitespace
    Plug 'ntpeters/vim-better-whitespace'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
