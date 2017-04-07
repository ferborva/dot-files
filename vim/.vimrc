set nocompatible              " be iMproved, required

syntax enable
filetype plugin on                  " required

" Fuzzy finder
set path+=**

" Set Wildmenu finder for fuzzy filesearch
set wildmenu

" Set indentation config to 2 spaces
set expandtab
set shiftwidth=2
set softtabstop=2
" With these two options set we can:
" - Hit tab to :find  by partial match
" - Use * to make it fuzzy
"
" Things to consider:
" - :b lets you autocomplete any open buffer

" TAG JUMPING
command! MakeTags !ctags -R .

" NOW WE CAN:
" - Use ^] to jump to a tag under a cursor
" - Use g^] for ambiguous tags
" - Use ^t to jump back up the tag stack

" SNIPPETS:
" Example pointing to a noneexisting file, but you get the jist from it
nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>

set rnu
set number

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


" Javascript Syntax
Plugin 'pangloss/vim-javascript'

" TPope's surround super plugin
Plugin 'tpope/vim-surround'

" TPope's commenting plugin
Plugin 'tpope/vim-commentary'

" Auto pairs plugin
Plugin 'jiangmiao/auto-pairs'

" Indentation Text Object
Plugin 'michaeljsmith/vim-indent-object'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
