set nocompatible
set number
set title
set ruler
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set noexpandtab
set backspace=indent,eol,start

" NeoBundle
if filereadable(expand('$HOME/dotfiles/.vimrc.neobundle')) " ファイルが読み込み可能かチェック
  source $HOME/dotfiles/.vimrc.neobundle " .vimrcファイル読み込み

  if filereadable(expand('$HOME/dotfiles/.vimrc.plugin'))
    source $HOME/dotfiles/.vimrc.plugin
  endif
endif

filetype plugin indent on
set t_Co=256
syntax on
colorscheme jellybeans
