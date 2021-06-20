" vimrc file for Vim/Gvim.
"
" Maintainer:   Jsun <cnhttpd@gmail.com>
" Vim Version: 7.3

set nocompatible              " be iMproved
filetype off                  " required

scriptencoding utf-8          " utf-8 all the way
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

""" General
set history=1000              " Number of things to remember in history.
set timeoutlen=250            " Time to wait after ESC (default causes an annoying delay)
set number                    " show line numbers
set nofoldenable              " disable folding
set confirm                   " prompt when existing from an unsaved file
set t_Co=256                  " Explicitly tell vim that the terminal has 256 colors
set mouse=a                   " use mouse in all modes
set report=0                  " always report number of lines changed
set showmatch                 " show matching bracket (briefly jump)
set matchtime=2               " show matching bracket for 0.2 seconds
set title                     " show file in titlebar
set laststatus=2              " use 2 lines for the status bar

set showcmd                   " show typed command in status bar
set shortmess=atI             " Abbreviation, and truncate message when necessary.
                              " I don't give the intro message when starting Vim.
set matchpairs+=<:>           " specially for html
set modeline
set modelines=5               " default numbers of lines to read for modeline instructions

set autowrite                 " Writes on make/shell commands
set autoread

set nobackup
set nowritebackup
set noswapfile
" set hidden                  " The current buffer can be put to the background without writing to disk
" set directory=/tmp//        " prepend(^=) $HOME/.tmp/ to default path; use full path as backup filename(//)

" set scrolloff=5             " 5 lines above/below cursor when scrolling
" set relativenumber

" search settings
set incsearch                 " show matches while typing
" set highlight               " conflict with highlight current line
set hlsearch                  " highlight search
set ignorecase                " be case insensitive when searching
set smartcase                 " be case sensitive when input has a capital letter

" let g:is_posix = 1          " vim's default is archaic bourne shell, bring it up to the 90s
" let mapleader = ','         " set mapleader
" let maplocalleader = '  '   " Tab as a local leader
" let g:mapleader = ','
" let g:netrw_banner = 0      " do not show Netrw help banner
set clipboard+=unnamed        " Yanks go on clipboard instead.
set pastetoggle=<F10>         " toggle between paste and normal: for 'safer' pasting from keyboard
" set shiftround              " round indent to multiple of 'shiftwidth'
" set tags=.git/tags;$HOME    " consider the repo tags first, then
                              " walk directory tree upto $HOME looking for tags
                              " note `;` sets the stop folder. :h file-search

""" Formatting
" set fo+=o                   " Automatically insert the current comment leader after hitting
                              " 'o' or 'O' in Normal mode.
" set fo-=r                   " Do not automatically insert a comment leader after an enter
" set fo-=t                   " Do no auto-wrap text using textwidth (does not apply to comments)

set nowrap                    " dont wrap lines
set textwidth=79              " Don't wrap lines by default
set tabstop=4                 " tab size eql 4 spaces
set softtabstop=4
set shiftwidth=4              " default shift width for indents
set list
set listchars=space:\ ,tab:»\ ,nbsp:¬,trail:.,eol:¶
" set listchars+=extends:»,precedes:«

" set expandtab               " replace tabs with ${tabstop} spaces
set smartindent               " indent when
set backspace=indent          " More powerful backspacing
set backspace+=eol
set backspace+=start
" set smarttab
" set autoindent
" set cindent
" set indentkeys-=0#          " do not break indent on #
" set cinkeys-=0#
" set cinoptions=:s,ps,ts,cs
" set cinwords=if,else,while,do
" set cinwords+=for,switch,case

syntax on                     " enable syntax
colorscheme ingretu           " color scheme
filetype plugin indent on     " Automatically detect file types.

""" highlighting the current row and column
autocmd WinLeave,InsertLeave * set nocursorline nocursorcolumn
autocmd WinEnter,InsertEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

"""" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" IDE features
" Tagbar is a Vim plugin that provides an easy way to browse the
" tags of the current file and get an overview of its structure.
" It does this by creating a sidebar that displays the ctags-generated
" tags of the current file, ordered by their scope. This means that
" for example methods in C++ are displayed under the class they are defined in.
Plugin 'majutsushi/tagbar'
" Vim script for text filtering and alignment
Plugin 'godlygeek/tabular'
" Fuzzy file, buffer, mru, tag, etc finder.
Plugin 'kien/ctrlp.vim'
" Supertab is a vim plugin which allows you to use <Tab> for all
" your insert completion needs (:help ins-completion).
Plugin 'ervandew/supertab'
" Syntax checking hacks for vim
Plugin 'scrooloose/syntastic'
" This is an EditorConfig plugin for Vim.
Plugin 'editorconfig/editorconfig-vim'
" lean & mean status/tabline for vim that's light as air
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" ingretu is a GUI Vim colorscheme.
Plugin 'gmarik/ingretu'
Plugin 'KeitaNakamura/neodark.vim'


" Git integration
" Vim Git runtime files
Plugin 'tpope/vim-git'
" A Vim plugin which shows a git diff in the gutter (sign column) and stages/undoes hunks.
Plugin 'airblade/vim-gitgutter'

" Vim plugin, provides insert mode auto-completion for quotes, parens, brackets, etc.
Plugin 'Raimondi/delimitMate'
" Functions and mappings to close open HTML/XML tags
Plugin 'docunext/closetag.vim'
" Interactive command execution in Vim.
Plugin 'Shougo/vimproc.vim'


" programming language
Plugin 'plasticboy/vim-markdown'
Plugin 'JamshedVesuna/vim-markdown-preview'
" syntax file for the groovy programming language
Plugin 'vim-scripts/groovy.vim'
" Go development plugin for Vim
Plugin 'fatih/vim-go'
" c.vim : C/C++ IDE -- Write and run programs. Insert statements, idioms,
" comments etc.
Plugin 'c.vim'
Plugin 'hashivim/vim-terraform'

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

"""" display unprintable characters f12 - switches
"map <silent> <F12> :set invlist<CR>
"
"""" Key mappings
nnoremap <leader>rs :source ~/.vimrc<CR>
nnoremap <leader>rt :tabnew ~/.vim/vimrc<CR>
nnoremap <leader>re :e ~/.vim/vimrc<CR>
nnoremap <leader>rd :e ~/.vim/ <CR>
nnoremap <leader>rc :silent ! cd ~/.vim/ && git commit ~/.vim/vimrc -v <CR>

""""
vmap <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>

"""" easier navigation between split windows
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l

"""" nnoremap <C-p> :set invpaste<CR>
nnoremap <M-h> :tabprev<CR>
nnoremap <M-l> :tabnext<CR>

"""" nerdtree
nnoremap <silent><f2> :NERDTreeToggle<cr>

"""" TabBar
"let g:tagbar_width=30
"nnoremap <silent><F8> :TagbarToggle<CR>

" vim-airline
let g:airline_theme='simple'
let g:airline_powerline_fonts = 1

" vim-gitgutter
set updatetime=250

" vim-markdown-preview
let vim_markdown_preview_github=1
let vim_markdown_preview_hotkey='<C-m>'

au BufNewFile,BufRead /private/**/gopass** setlocal noswapfile nobackup noundofile

