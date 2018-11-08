if &t_Co > 2 || has("gui_running")
	syntax on
endif


set nocompatible
filetype off


" Vundle setting
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

"" you can add plugines under this line.
"" example: Plugin '[Github Author]/[Github repo]'
Plugin 'Shougo/neocomplete.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plugin 'mdempsky/gocode', {'rtp': 'vim/'}

call vundle#end()


filetype plugin indent on


set number
set backspace=indent,eol,start
set tabstop=4
set shiftwidth=4

augroup fileTypeIndent
	autocmd!
	autocmd BufNewFile,BufRead *.py setlocal expandtab softtabstop=4
augroup End


" neocomplete setting
let g:neocomplete#enable_at_startup = 1 
if !exists('g:neocomplete#sources#omni#input_patterns') 
	let g:neocomplete#sources#omni#input_patterns = {} 
endif 
set completeopt=menuone 
"" python
autocmd FileType python setlocal omnifunc=jedi#completions
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
if !exists('g:neocomplete#force_omni_input_patterns')
	let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.python = '\h\w*\|[^. \t]\.\w*'
"" go
let g:neocomplete#sources#omni#input_patterns.go = '\h\w*\|[^. \t]\.\w*' 


" my key setting
inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap {} {}<Left>
inoremap [] []<Left>
inoremap () ()<Left>
inoremap '' ''<Left>
inoremap "" ""<Left>
inoremap {<CR> {}<Left><CR><ESC><S-o>
