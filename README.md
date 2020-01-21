# .vim
This is my basic setup for Vim.
first you need to symlink the vimrc to .vimrc in your home directory, then init the submodules.

`cd ~`

`git clone http://github.com/spitford/.vim.git`

`ln -s ~/.vim/vimrc ~/.vimrc`

`cd ~/.vim`

`git submodule init`

`git submodule update --remote`

## KPL Highlighting

Once you have a KPL file open in vim, (\*.c or \*.h) type:

`:set ft=kpl`
