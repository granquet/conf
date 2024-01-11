source $VIMRUNTIME/defaults.vim

syntax on
set softtabstop=4
set tabstop=4
set shiftwidth=4

set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set list
colorscheme elflord

call plug#begin()
Plug 'junegunn/vim-plug'
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-grepper'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
call plug#end()

" Required for operations modifying multiple buffers like rename.
set hidden

let g:LanguageClient_serverCommands = {
    \ 'c': ['clangd'],
    \ 'cpp': ['clangd'],
    \ 'rust': ['rust-analyzer'],
    \ 'python': ['pylsp'],
    \ }

let g:LanguageClient_diagnosticsList = "Location"

nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
