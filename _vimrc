filetype plugin on
filetype indent on

syntax enable

set nocompatible
set number
set hlsearch
set incsearch
set showmatch
set nobackup
set noswapfile
set smarttab
set shiftwidth=4
set tabstop=4
set history=1000
set undolevels=1000

set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ %=Line:\ %l/%L(%p%%),%c%V\ [%-3b:0x%-2B]\ [%{&ft==''?'TEXT':toupper(&ft)},%{toupper(&ff)},%{toupper(&fenc!=''?&fenc:&enc)}%{&bomb?',BOM':''}%{&eol?'':',NOEOL'}]

function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

