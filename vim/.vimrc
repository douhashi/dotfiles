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
set encoding=utf-8

" NeoBundle
if filereadable(expand('$HOME/.vim/.vimrc.neobundle')) " ファイルが読み込み可能かチェック
  source $HOME/.vim/.vimrc.neobundle " .vimrcファイル読み込み

  if filereadable(expand('$HOME/.vim/.vimrc.plugin'))
    source $HOME/.vim/.vimrc.plugin
  endif
endif

filetype plugin indent on
set t_Co=256
syntax on
colorscheme jellybeans

" Unite
let g:unite_enable_start_insert=1
noremap <C-P> :Unite buffer<CR>
noremap <C-N> :Unite -buffer-name=file file<CR>
noremap <C-Z> :Unite file_mru<CR>

" statusline
set laststatus=2
if filereadable(expand('$HOME/.vim/.vimrc.lightline'))
  source $HOME/.vim/.vimrc.lightline
end
