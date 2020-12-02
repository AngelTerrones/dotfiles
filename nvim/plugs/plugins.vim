" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
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
    " Ranger
    Plug 'kevinhwang91/rnvimr'
    " startify
    Plug 'mhinz/vim-startify'
    " Tabs
    Plug 'pacha/vem-tabline'
    Plug 'ryanoasis/vim-devicons'
    " git
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'junegunn/gv.vim'
    Plug 'rhysd/git-messenger.vim'
    " Whitespace
    Plug 'ntpeters/vim-better-whitespace'
    " Search
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release', 'do': ':UpdateRemotePlugins' }
    " Code completion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Close buffers
    Plug 'moll/vim-bbye'
    " Shortcuts
    Plug 'airblade/vim-rooter'
    " extras
    Plug 'liuchengxu/vim-which-key'
    " Vista
    Plug 'liuchengxu/vista.vim'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
