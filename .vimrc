" Install vim-plug from here: https://github.com/junegunn/vim-plug

" Line numbers
set number

" Tabs width to 2 spaces
set tabstop=2
set shiftwidth=2

" Changes indentation to spaces in yml files
autocmd Filetype yaml,yml setlocal ts=2 sts=2 sw=2 expandtab

" Automatically indent
set cindent

" Plugins
call plug#begin()
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
call plug#end()

" Settings for vim-airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'wombat'
