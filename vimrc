execute pathogen#infect()

let mapleader = "\<Space>"

syntax on

set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set autoindent
set number

function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END

command! GitBlame :echo system('~/.vim/vim_git.sh blame '''.expand('%').''' '.line('.'))
nnoremap <F4> :GitBlame<CR>
au VimEnter * NERDTree
let NERDTreeMapOpenInTab='<ENTER>'
au VimEnter * wincmd w
au bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

nnoremap <Leader>f :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>v :NERDTreeFind<Enter>

noremap % v%
noremap <Leader>i gg=G
