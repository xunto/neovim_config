function! ConfigureDefaults()
    " Set default encoding to utf8
    set termencoding=utf8

    " Increase history size
    set history=200

    set laststatus=2
endfunction

function! ConfigureDisplay()
    " Show line numbers
    set number

    " Always show ruler
    set ruler

    " Enable syntax highlighting
    syntax on

    " Show pairs symbols on hover
    set showmatch

    " Highlight line where cursor is
    " set cursorline
    " highlight CursorLine guibg=lightblue ctermbg=darkgray
    " highlight CursorLine term=none cterm=none

    " colorscheme
    " https://github.com/gkjgh/cobalt
    colorscheme cobalt

    " Should speed up scrolling
    set lazyredraw
    set ttyfast
endfunction

function! ConfigureControls()
    " Mouse
    set mouse=a
    set mousemodel=popup
endfunction

function! ConfigureIndent()
    " Extra indent logic
    set autoindent
    set smartindent

    " Configure spaces on tab
    set expandtab
    set shiftwidth=4
    set softtabstop=4
    set tabstop=4

    " Display characters for tab and space
    set list listchars=tab:→\ ,trail:·
endfunction

function! ConfigurePlugins()
    set rtp+=~/.vim/bundle/Vundle.vim

    filetype off
    call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'

    " Plugin 'python-mode/python-mode'

    " Requires "neovim" installed using pip
    Plugin 'davidhalter/jedi-vim'
    " let g:pymode_rope = 0
    let g:jedi#completions_enabled = 0

    " Dependecny
    Plugin 'Shougo/deoplete.nvim'

    " Async autocomplete
    Plugin 'zchee/deoplete-jedi'
    call vundle#end()
    filetype plugin indent on

    call deoplete#enable()
endfunction

call ConfigureDefaults()
call ConfigureControls()
call ConfigureDisplay()
call ConfigureIndent()
call ConfigurePlugins()
