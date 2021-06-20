# Vim configuration for program development and file editing.

## Plugin List

### IDE features
* <del>[nerdtree](https://github.com/scrooloose/nerdtree) The NERD tree allows you to explore your filesystem and to open files and directories.</del>
* [tagbar.git](https://github.com/majutsushi/tagbar) Tagbar is a Vim plugin that provides an easy way to browse the tags of the current file and get an overview of its structure.
* <del>[minibufexpl](https://github.com/fholgado/minibufexpl.vim) buffer explorer.</del>
* [tabular](https://github.com/godlygeek/tabular.git) Vim script for text filtering
	and alignment

### Git integration
* [vim-git](https://github.com/tpope/vim-git) Vim Git runtime files.
* [vim-fugitive](https://github.com/tpope/vim-fugitive) fugitive.vim may very well be the best Git wrapper of all time.
* [vim-gitgutter](https://github.com/airblade/vim-gitgutter.git) A Vim plugin
	which shows a git diff in the 'gutter' (sign column). It shows whether each
	line has been added, modified, and where lines have been removed. You can
	also stage and undo individual hunks.

### Fast
* [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim) Active fork of kien/ctrlp.vim—Fuzzy file, buffer, mru, tag, etc finder.
* [supertab](https://github.com/ervandew/supertab) Supertab is a vim plugin which allows you to use <Tab> for all your insert completion needs (:help ins-completion).

### Tools
* [powerline](https://github.com/powerline/powerline) Powerline is a statusline plugin for vim, and provides statuslines and prompts for several other applications, including zsh, bash, tmux, IPython, Awesome, i3 and Qtile.
* [vim-sensible](https://github.com/tpope/vim-sensible) Think of sensible.vim as one step above 'nocompatible' mode: a universal set of defaults that (hopefully) everyone can agree on.

### programming language
* [vim-twig](https://github.com/evidens/vim-twig) Twig syntax highlighting, snipMate, etc.
* [groovy.vim](https://github.com/vim-scripts/groovy.vim.git) syntax file for the groovy programming language

### Theme colors
* [ingretu](https://github.com/gmarik/ingretu) ingretu is a GUI Vim colorscheme.

### Syntax checking
* [syntastic](https://github.com/scrooloose/syntastic) Syntax checking hacks for vim
* [vim-markdown](https://github.com/plasticboy/vim-markdown) Syntax highlighting, matching rules and mappings for the original Markdown and extensions.
* [editorconfig-vim](https://github.com/editorconfig/editorconfig-vim.git) This is an EditorConfig plugin for Vim.

### auto-completion
* [delimitMate](https://github.com/Raimondi/delimitMate) Vim plugin, provides insert mode auto-completion for quotes, parens, brackets, etc.
* [closetag.vim](https://github.com/docunext/closetag.vim) Functions and mappings to close open HTML/XML tags
* [vimproc](https://github.com/Shougo/vimproc.vim) vimproc is a great asynchronous execution library for Vim. It is a fork of proc.vim by Yukihiro Nakadaira. I added some features and fixed some bugs and I'm maintaining it now. Instead of an external shell (example: 'shell'), vimproc uses an external DLL file.
* <del>[phpcomplete](https://github.com/shawncplus/phpcomplete.vim) Improved PHP omni-completion. Based on the default phpcomplete.vim.</del>

## Screenshots

![screenshots](https://raw.githubusercontent.com/bjsun/vimfiles/master/screenshots/WX20170407.png)

## Installation

### Vim Install

```
brew install macvim --env-std --with-override-system-vim
```

Fix bug!

```
brew install reattach-to-user-namespace
```

Git clone vimfiles

```bash
cd ~
mkdir -p ~/.vim/autoload ~/.vim/bundle
git clone https://github.com/bjsun/vimfiles .vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s ~/.vim/vimrc ~/.vimrc && ln -s ~/.vim/gvimrc ~/.gvimrc

vim command
:PluginInstall

git clone https://github.com/gpakosz/.tmux.git ~/.tmux
ln -s -f ~/.tmux/.tmux.conf ~/
ln -s ~/.vim/tmux.conf.local ~/.tmux.conf.local
```

