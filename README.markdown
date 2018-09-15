# stata.vim

Syntax file for editing Stata and Mata source files.

Some mappings I find specifically useful while editing Stata and Mata source
files.

## Installation

I use [pathogen.vim](https://github.com/tpope/vim-pathogen)
to install Vim plugins.
If you do too, then you can use the following to install this plugin:

```
cd ~/.vim/bundle
git clone https://github.com/jpitblado/vim-stata.git stata
```

## Stata commands

If you want Vim to recognize the full list of documented and
'undocumented' commands in Stata, copy `stata_commands.vim` to
`$HOME/.vim/after/syntax/stata.vim` or use a symbolic link.

```
mkdir -p $HOME/.vim/after/syntax
ln -s $PWD/stata_commands.vim $HOME/.vim/after/syntax/stata.vim
```

## Future plans

Update the syntax file to conform with the current Stata release.

## License

Copyright (c) Jeff Pitblado

Distributed under the same terms as Vim itself.  See `:help license`.

