" =======================================================
" This file contains the essential plugins which you can't
" miss.
" =======================================================

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

" File system explorer
Plug 'scrooloose/nerdtree'

" Syntax checking plugin
Plug 'vim-syntastic/syntastic'

" Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
Plug 'ctrlpvim/ctrlp.vim'

" A light and configurable statusline/tabline plugin
Plug 'itchyny/lightline.vim'

" Mappings to easily delete, change and add surroundings in pairs
Plug 'tpope/vim-surround'

" Tex filtering and alignment
Plug 'godlygeek/tabular'

" Peaksea color scheme
Plug 'vim-scripts/peaksea'

" Git wrapper
Plug 'tpope/vim-fugitive'

" Python indent
Plug 'Vimjas/vim-python-pep8-indent'

" Better white space
Plug 'ntpeters/vim-better-whitespace'

" Search tool integration(need to work with ack or ag)
Plug 'mileszs/ack.vim'

" Javascript indentation and highlighting
Plug 'pangloss/vim-javascript'

" Json syntax
Plug 'elzr/vim-json'

" For insert completion
Plug 'ervandew/supertab'

" Syntax Highlighting and Indentation for Haskell and Cabal
Plug 'neovimhaskell/haskell-vim'

" Initialize plugin system
call plug#end()

