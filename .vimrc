set nocompatible

" how to install vim-plug:
"curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

" plugins need to be loaded before you use them, so run this first
call plug#begin('~/.vim/plugged')

" add a plugin like this:
    " comment describing what the plugin is for
    "Plug 'https://github.com/path/to/repo.git'
" then reload your .vimrc and run :PlugInstall to install

" ipython/vim plugin
Plug 'https://github.com/ivanov/vim-ipython.git'

" fancy up the status bar
Plug 'https://github.com/vim-airline/vim-airline.git'
" add colorschemes for this tool
Plug 'https://github.com/vim-airline/vim-airline-themes.git'

" snippet plugin
Plug 'https://github.com/SirVer/ultisnips.git'

" snippet library
Plug 'https://github.com/honza/vim-snippets.git'

" surround plugin - make it easy to wrap with parens etc
Plug 'https://github.com/tpope/vim-surround.git'

" nice undo tree with diffs
Plug 'https://github.com/sjl/gundo.vim.git'

" give control-p file manager a whirl
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'

" alfredodeza's python linter
Plug 'https://github.com/alfredodeza/khuno.vim.git'

" ARRRRRRRRRRRRRRRRR
" key bindings can be found here:
" https://raw.githubusercontent.com/jalvesaq/Nvim-R/master/doc/Nvim-R.txt
Plug 'https://github.com/jalvesaq/Nvim-R.git'

" simulate a split shell inside of vim using tmux
Plug 'https://github.com/ervandew/screen.git'

" lets you view an outline of classes and functions in a file
Plug 'https://github.com/majutsushi/tagbar'

" simple colorscheme browser
Plug 'https://github.com/vim-scripts/ScrollColors.git'

" add some rad colorschemes
Plug 'https://github.com/flazz/vim-colorschemes.git'

Plug 'https://github.com/fcpg/vim-orbital'

" display marks to the left of line numbers
"  - you may need to make a 'docs' directory to kill an error message
"    - mkdir ~/.vim/plugged/Showmarks/doc
Plug 'https://github.com/vim-scripts/ShowMarks.git'

" jump to any location on screen!
Plug 'https://github.com/easymotion/vim-easymotion.git'

" neat little tool to highlight bits of code as you scroll
Plug 'https://github.com/junegunn/limelight.vim.git'

" higlight columns visually to show indent levels
Plug 'https://github.com/nathanaelkane/vim-indent-guides'

" show contents of buffers in a split tab
Plug 'https://github.com/jlanzarotta/bufexplorer.git'

" add some new text objects, and allow ci( (for example) from anywhere on line
Plug 'https://github.com/wellle/targets.vim.git'

" tmux/vim integration tool
Plug 'https://github.com/jgdavey/tslime.vim.git'


" align things visually
" :EasyAlign
"Plug 'https://github.com/junegunn/vim-easy-align.git'

" testing an alternate alignment tool
Plug 'https://github.com/godlygeek/tabular.git'

call plug#end()

" visual prefs
if has("gui_running")
    " hide toolbar
    set guioptions-=T
    set guifont=InconsolataLGC:h12
    "colorscheme gotham
    "colorscheme nightshimmer
    colorscheme jellybeans
    hi Normal guibg=grey20
    " window transparency
    set transparency=20
endif

if !has("gui_running")
    colorscheme grb256
    " mouse support
    set mouse=a
endif

" Ph'nglui mglw'nafh Cthulhu R'lyeh wgah'nagl fhtagn

" easy access to Gundo toggle
nnoremap <leader>ggg :GundoToggle<cr>

" colorscheme for Airline
let g:airline_theme="papercolor"

" turn off the default showmode behavior, since i'm using airline
set noshowmode

" prevent the terminal from capturing c-q (otherwise vim never sees it)
" http://stackoverflow.com/questions/7883803/why-doesnt-map-c-q-q-cr-work-in-vim
silent !stty -ixon > /dev/null 2>/dev/null

" enter visual block mode in terminal vim
" http://vi.stackexchange.com/questions/3699/is-there-a-command-to-enter-visual-block-mode
"command! Vb normal! <C-v>
"nnoremap <c-q> :Vb<cr>

" take the newline character out of line highlight
nnoremap <c-v> 0v$h

" remap the snippet trigger key
let g:UltiSnipsExpandTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

"" begin R plugin customization

" open help docs in a vertical split instead of a new tab
let R_nvimpager="vertical"
let R_rconsole_width = 80

" increase the width of the help doc split window
let R_help_w=100

" remap the key to create <-
let R_assign_map="`"

" tmux configurations to split panes vertically with R plugin
let R_in_buffer=0
let R_applescript=0
let R_tmux_split=1

"" end R

" make it easy to close the *other* split window
nnoremap <leader>ww <c-w><c-w>:q<cr>

" remap for ctrlp - press enter in normal mode to pull up the buffer list
"nnoremap <CR> :CtrlPBuffer<CR>

" turn on relative line numbers
set relativenumber

" basic preferences - line numbers, tab size, shift width, tabs into spaces
set number
set ts=4
set sw=4
set expandtab

" allow selecting past end of line in visual mode
set virtualedit=block

" treat _ as a word
" set iskeyword=_

" set smart case for searching
set ignorecase
set smartcase

" fancy up some display characters
set listchars=tab:▸\ ,extends:❯,precedes:❮,nbsp:␣,eol:→,trail:·

" make copying from the system clipboard into terminal vim nicer
" (disabled because it seems to conflict with remapping <esc> to 'jk' - jk will enter text instead of escaping
" set paste

" directory explorer
nnoremap <leader>aa :vsp current_directory<cr>:e .<cr>

" use tab instead of % for paren matching
nnoremap <tab> %
vnoremap <tab> %

" add a buffer of a few lines above/below the current line when scrolling
set scrolloff=5

" make it easy to view snippets
nnoremap <leader>snip :vsp ~/.vim/plugged/vim-snippets/snippets/qsl.snippets<cr>

" make it easy to :vsp
nnoremap \\\ :vsp<cr>

" make it easy to :vsp a new scratch qsl document
" nnoremap \]\ :vsp n.qsl<cr>

" move through buffers
nnoremap \[ :bprevious<cr>
nnoremap \] :bnext<cr>

" show options in status bar when tab-completing ex commands
set wildmenu

" textwidth
set textwidth=0
autocmd FileType,BufNewFile,BufRead *.py :setlocal textwidth=79

" this is incomplete!
"autocmd FileType,BufNewFile,BufRead *.py :inoremap <tab>

" auto-set spss filetype
au BufNewFile,BufRead *.sps set filetype=sps

" make indents nicer
set autoindent
syntax on
filetype on
filetype plugin on
filetype indent on
set ofu=syntaxcomplete#Complete

" make comments italic
"highlight Comment cterm=italic
highlight Comment gui=italic

" Hotkey for :TagbarToggle
nnoremap <leader>tt :TagbarToggle<cr>

" make I go to the beginning of the line, ignoring whitespace
nnoremap I 0i

" experiment with mappings to move lines up/down
nnoremap - ddp
nnoremap _ ddkkp

" swap the ' and ` keys for jumping to marks
nnoremap ' `
nnoremap ` '

" turn off joinspaces so that J only uses one space after join
set nojoinspaces

" allow navigating away from buffers with unsaved changes
set hidden

" remap omnicomplete keys
inoremap <c-l> <c-x><c-o>

" make :vsp open windows on the right instead of the left
set splitright

" turn off swap files
set noswapfile

" show the number of lines/characters selected in visual mode
set showcmd

"improve status bar
set laststatus=2
"set statusline=%F\ %m\ %y%=%l,%c\ %P

" turn on search highlighting
set hlsearch
set incsearch

" turn off beeping
set vb

" make regexes more readable (turn on magic to level "very magic")
cnoremap s/ s/\v

" turn on unicode
set encoding=utf-8

" remap escape key to jk
inoremap jk <esc>

" show fold nesting, n columns wide
set foldcolumn=3

" remap H/L to move to beginning/end of line
nnoremap H 0
nnoremap L $

vnoremap H 0
vnoremap L $h

" make it easy to edit and source .vimrc/.gvimrc on-the-fly
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" make it easy to add a space after braces in insert mode
inoremap <c-space> <esc>la

" insert a newline and don't stay in insert mode
nnoremap <c-o> O<esc>

" underlines
vnoremap K di<<u><esc>pa</u>><esc>

" line wrapping prefs
set wrap
set linebreak
set nolist
"set textwidth=0
set wrapmargin=0

" auto-add closing braces and parens
inoremap {      {}<left>
inoremap {<cr>  {<cr>}<esc>O
inoremap {{     {
inoremap {}     {}
inoremap [      []<left>
inoremap [<cr>  [<cr>]<esc>O
inoremap [[     [
inoremap []     []
inoremap (      ()<left>
inoremap (<cr>  (<cr>)<esc>O
inoremap ((     (
inoremap ()     ()

" choose terminal program for screen plugin
"let vimrplugin_term = "iTerm"

" turn on the matchit plugin to use % to jump between html and other tags
runtime macros/matchit.vim

" hide the special marks for showmark plugin
let showmarks_include = "abcdefghilmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

" function to google word under cursor in a browser
function! GoogleSearch()
    let searchterm = getreg("z")
        silent! exec "silent! !open \"http://google.com/search?q=" . searchterm . "\""
    endfunction
vnoremap <F5> "zy<esc>:call GoogleSearch()<CR>

" shortcut to set qsl filetype
" embeds css highlighting inside of qsl highlighting
function! QSL()
    set ft=qsl
    let b:current_syntax = ''
    unlet b:current_syntax
    runtime! syntax/qsl.vim

    let b:current_syntax = ''
    unlet b:current_syntax
    syntax include @qsl syntax/qsl.vim

    let b:current_syntax = ''
    unlet b:current_syntax
    syntax include @CSS syntax/css.vim
    syntax region cssEmbedded matchgroup=Snip start='<<style>' end='</style>>' containedin=@qsl contains=@CSS

    let b:current_syntax = ''
    unlet b:current_syntax
    syntax include @javascript syntax/javascript.vim
    syntax region jsEmbedded matchgroup=Snip start='<<script>' end='</script>>' containedin=@qsl contains=@javascript

    let b:current_syntax = ''
    unlet b:current_syntax
    syntax include @html syntax/html.vim
    syntax region htmlEmbedded matchgroup=Snip start='#html' end='#/html' containedin=@qsl contains=@html

    hi link Snip SpecialComment
    let b:current_syntax = 'qsl.vim'
endfunction
map <leader>qsl :call QSL()<CR>

" turn on cursor row highlighting
set cursorline

"Use TAB to complete when typing words, else inserts TABs as usual.
"Uses dictionary and source files to find matching words to complete.
"See help completion for source,
"Note: usual completion is on <c-n> but more trouble to press all the time.
"Never type the same word twice and maybe learn a new spellings!
"Use the Linux dictionary when spelling is in doubt.
"Window users can copy the file to their machine.
function! Tab_Or_Complete()
    if col('.') > 1 && strpart(getline('.'), col('.')-2, 3) =~ '^\w'
        return "\<c-n>"
    else
        return "\<Tab>"
    endif
endfunction
inoremap <tab> <c-r>=Tab_Or_Complete()<cr>

" function to increment selected numbers, mapped to control-i
function! Incr()
    let a = line('.') - line("'<")
    let c = virtcol("'<")
    if a > 0
        execute 'normal! '.c.'|'.a."\<c-a>"
    endif
    normal `<
endfunction
vnoremap <c-i> :call Incr()<cr>
