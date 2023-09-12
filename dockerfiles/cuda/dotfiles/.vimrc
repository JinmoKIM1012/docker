set hlsearch
set nu
set autoindent
set scrolloff=2
set ts=4
set sts=4
set sw=4
set autowrite
set autoread
set cindent
set history=256
set laststatus=2
set showmatch
set smartcase
set smarttab
set smartindent
set ruler
set incsearch
set mouse=a

if has("syntax")
	syntax on
endif

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'AutoComplPop'
Plugin 'dracula/vim', {'name':'dracula'}
call vundle#end()
colorscheme dracula
filetype plugin indent on

function! InsertTabWrapper()
let col = col('.')-1
if !col||getline('.')[col-1]!~'\k'
	return "\<TAB>"
else
	if pumvisible()
		return "\<C-N>"
	else
		return "\<C-N>\<C-P>"
	end
endif
endfunction

inoremap <tab> <c-r>=InsertTabWrapper()<cr>

hi Pmenu ctermbg=blue
hi PmenuSel ctermbg=yellow ctermbg=black
hi PmenuSbar ctermbg=blue
