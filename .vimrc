set background=dark
if has("gui_running")
    colorscheme solarized
else
    colorscheme slate
endif

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
"set autoindent

" Always display the status line, even if only one window is displayed
set laststatus=2

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" Display line numbers on the left
set number

" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set expandtab

" Indentation settings for using hard tabs for indent. Display tabs as
" four characters wide.
"set shiftwidth=4
"set tabstop=4

set foldmethod=syntax
filetype plugin indent on
syntax enable


" For syntastic
execute pathogen#infect()
let g:syntastic_javascript_checkers = ['eslint']
let g:vim_markdown_folding_disabled=1

set background=dark
colorscheme slate

" Key mappings here!
" Escape is for suckers.
imap jk <Esc>
imap ii <Esc>

