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

"Plug 'vim/killersheep'

" nicer way to autocomplete braces etc
"Plug 'https://github.com/tmsvg/pear-tree.git'

" test out python-mode
Plug 'https://github.com/python-mode/python-mode.git'

" more complete python syntax highlighting
"Plug 'https://github.com/vim-python/python-syntax.git'
"Plug 'https://github.com/sheerun/vim-polyglot.git'

" sql tools
Plug 'https://github.com/tpope/vim-dadbod.git'
Plug 'https://github.com/kristijanhusak/vim-dadbod-ui.git'
Plug 'https://github.com/kristijanhusak/vim-dadbod-completion.git'
Plug 'https://github.com/vim-scripts/dbext.vim.git'

" code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/fannheyward/coc-sql.git'

" linting engine
Plug 'https://github.com/dense-analysis/ale.git'

" python code autoformatter
"Plug 'psf/black', { 'branch': 'stable' }

" save workspaces
Plug 'https://github.com/mhinz/vim-startify'

" fzf fuzzy finder
"Plug 'https://github.com/junegunn/fzf.git'

" fancy up the status bar
Plug 'https://github.com/vim-airline/vim-airline.git'
" add colorschemes for this tool
Plug 'https://github.com/vim-airline/vim-airline-themes.git'

" fancy up the tmux status bar to match vim
Plug 'https://github.com/edkolev/tmuxline.vim.git'

" snippet plugin
"Plug 'https://github.com/SirVer/ultisnips.git'
"Plug 'https://github.com/ncm2/ncm2-ultisnips.git'

" snippet library
Plug 'https://github.com/honza/vim-snippets.git'

" surround plugin - make it easy to wrap with parens etc
Plug 'https://github.com/tpope/vim-surround.git'

" nice undo tree with diffs
Plug 'https://github.com/sjl/gundo.vim.git'

" control-p file manager
"Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'

" alfredodeza's python linter
"Plug 'https://github.com/alfredodeza/khuno.vim.git'

" ARRRRRRRRRRRRRRRRR
" key bindings can be found here:
" https://raw.githubusercontent.com/jalvesaq/Nvim-R/master/doc/Nvim-R.txt
Plug 'https://github.com/jalvesaq/Nvim-R.git'

" csv viewer
Plug 'https://github.com/chrisbra/csv.vim.git'

" simulate a split shell inside of vim using tmux

"Plug 'https://github.com/ervandew/screen.git'

" lets you view an outline of classes and functions in a file
"Plug 'https://github.com/majutsushi/tagbar'

" simple colorscheme browser
Plug 'https://github.com/vim-scripts/ScrollColors.git'

" add some rad colorschemes
"Plug 'https://github.com/flazz/vim-colorschemes.git'
Plug 'https://github.com/rafi/awesome-vim-colorschemes.git'
"Plug 'https://github.com/fcpg/vim-orbital'
"Plug 'https://github.com/yuttie/hydrangea-vim'
Plug 'https://github.com/quanganhdo/grb256'
Plug 'https://github.com/morhetz/gruvbox'

" display marks to the left of line numbers
"  - you may need to make a 'docs' directory to kill an error message
"    - mkdir ~/.vim/plugged/Showmarks/doc
Plug 'https://github.com/vim-scripts/ShowMarks.git'

" jump to any location on screen!
Plug 'https://github.com/easymotion/vim-easymotion.git'

" neat little tool to highlight bits of code as you scroll
"Plug 'https://github.com/junegunn/limelight.vim.git'

" higlight columns visually to show indent levels
Plug 'https://github.com/nathanaelkane/vim-indent-guides'

" show contents of buffers in a split tab
Plug 'https://github.com/jlanzarotta/bufexplorer.git'

" add some new text objects, and allow ci( (for example) from anywhere on line
Plug 'https://github.com/wellle/targets.vim.git'

" tmux/vim integration tool
Plug 'https://github.com/jpalardy/vim-slime.git'

" testing an alternate alignment tool
"Plug 'https://github.com/godlygeek/tabular.git'

" preview css color codes
Plug 'https://github.com/ap/vim-css-color.git'

" nicer indentation for python
Plug 'https://github.com/Vimjas/vim-python-pep8-indent.git'

" make tab complete easier
"Plug 'https://github.com/ervandew/supertab.git'

" autocomplete engine
"Plug 'https://github.com/Shougo/deoplete.nvim'

" needed for deoplete
"Plug 'https://github.com/roxma/vim-hug-neovim-rpc.git'
"Plug 'https://github.com/roxma/nvim-yarp.git'

call plug#end()

" visual prefs
if has("gui_running")
    " hide toolbar
    set guioptions-=T
    set guifont=Inconsolata:h14
    set bg=dark
    colorscheme OceanicNext
    "colorscheme mountaineer
    let g:airline_theme="molokai"
    "colorscheme gruvbox
    "colorscheme yellow-moon
    "colorscheme hydrangea
    "colorscheme materialbox
    "colorscheme nightshimmer
    "colorscheme jellybeans
    "colorscheme sift
    hi Normal guibg=grey20
    " window transparency
    set transparency=5
endif

if !has("gui_running")
    "colorscheme ir_black
    " colorscheme for Airline
    let g:airline_theme="oceanicnext"
    colorscheme grb256
    " mouse support
    set mouse=a
endif

" Ph'nglui mglw'nafh Cthulhu R'lyeh wgah'nagl fhtagn

" ALE setup
let g:ale_fixers = {}
"let g:ale_fixers.python = ['black']

    "\     'pylint',
let g:ale_linters = {
    \'python': [
    \     'flake8',
    \],
    \}

let g:ale_virtualtext_cursor = 'disabled'
let g:airline#extensions#ale#enabled = 1

" ale venv support
let g:ale_python_auto_pipenv = 1
let g:ale_python_pylint_change_directory=0
let g:ale_python_flake8_change_directory=0

" turn off the end-of-column highlighting in pythonmode
"let g:pymode_options_colorcolumn = 0
"
" ====  ============================
" Key   Command
" ====  ============================
" [[    Jump to previous class or function (normal, visual, operator modes)
" ]]    Jump to next class or function  (normal, visual, operator modes)
" [M    Jump to previous class or method (normal, visual, operator modes)
" ]M    Jump to next class or method (normal, visual, operator modes)
" aC    Select a class. Ex: vaC, daC, yaC, caC (operator modes)
" iC    Select inner class. Ex: viC, diC, yiC, ciC (operator modes)
" aM    Select a function or method. Ex: vaM, daM, yaM, caM (operator modes)
" iM    Select inner function or method. Ex: viM, diM, yiM, ciM (operator modes)
" V     Select logical line. Ex: dV, yV, cV (operator modes), also works with count
" ====  ============================


"" remove a % in the airline statusbar that overlaps other text
" first define this if it doesn't already exist (an issue in terminal)
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" now remove the symbol
let g:airline_symbols.colnr=' '

" make supertab iterate through completes top to bottom
"let g:SuperTabDefaultCompletionType = "<c-n>"

" coc status info
set statusline^=%{coc#status()}

" load up the config file for coc
source $HOME/myvim/coc_config.vim

" toggle hints in python code (can be very noisy)
" related to coc and Pyright
nnoremap <leader>hh :CocCommand document.toggleInlayHint<cr>

" adjust python version for gundo
if has('python3')
    let g:gundo_prefer_python3=1
endif

" make it easy to vsplit into a term and open ipython
nnoremap <leader>bb :vsp<cr>:term<cr><esc><c-w><c-k>:q<cr>iap<cr>ipython3<cr><esc><c-w><c-h>

" enable deoplete by default
"let g:deoplete#enable_at_startup=1

" try to keep deoplete from completing without me asking it to
"set completeopt=menu,noselect

" tmuxline configuration
" disable the default menu separators, which requires powerline
let g:tmuxline_powerline_separators=0
" prevent vim-airline from setting the tmux config - I want to do it myself
let g:airline#extensions#tmuxline#enabled=0

" vim-slime configuration
" use tmux instead of screen
"let g:slime_target="tmux"
" use the built-in terminal
let g:slime_target = "vimterminal"
" some defaults to set the target tmux pane
"let g:slime_dont_ask_default=1
"let g:slime_default_config={"socket_name": "default", "target_pane": "0.1"}
" send commands to ipython using %cpaste
"let g:slime_default_config="14 !/bin/zsh [IPython: Users/jason]]"
let g:slime_python_ipython=1

" close the preview window containing help-text after autocomplete
"autocmd CompleteDone * pclose
autocmd CompleteDone * if pumvisible() == 0|silent! pclose|endif

" easy access to Gundo toggle
nnoremap <leader>ggg :GundoToggle<cr>

" easily run text cleanup script
nnoremap <leader>cc :source ~/myvim/text_cleanup.vim<cr>

" turn off the default showmode behavior, since i'm using airline
set noshowmode

" prevent the terminal from capturing c-q (otherwise vim never sees it)
" http://stackoverflow.com/questions/7883803/why-doesnt-map-c-q-q-cr-work-in-vim
silent !stty -ixon > /dev/null 2>/dev/null

" take the newline character out of line highlight
nnoremap <c-v> 0v$h

" remap the snippet trigger key
"let g:UltiSnipsExpandTrigger="<c-k>"
"let g:UltiSnipsJumpForwardTrigger="<c-n>"
"let g:UltiSnipsJumpBackwardTrigger="<c-b>"

"nmap <leader>d  <Plug>(SendToTermLine)j
"" begin R plugin customization

" open file listing all <leader>xx shortcuts for the plugin
nnoremap <leader>rcom :vsp ~/myvim/r_plug_commands.txt<cr>

" open help docs in a vertical split instead of a new tab
let R_nvimpager="vertical"
"let R_rconsole_width=80
let R_rconsole_width=120

" increase the width of the help doc split window
let R_help_w=125

" remap the key to create <-
let R_assign_map="`"

" tmux configurations to split panes vertically with R plugin
"let R_in_buffer= 0
"let R_applescript=0
"let R_tmux_split=1
"let R_source="/Users/jason/.vim/plugged/Nvim-R/R/tmux_split.vim"

"" end R

" toggle the quick-fix window in Khuno linter
"nmap <silent><leader>k <esc>:Khuno show<cr>

" make it easy to close the *other* split window
nnoremap <leader>ww <c-w><c-w>:q<cr>

" decrease/increase height of current window by 20
nnoremap <leader>wii 20<c-w>-
nnoremap <leader>wim 20<c-w>+

" remap for ctrlp - press enter in normal mode to pull up the buffer list
"nnoremap <cr> :CtrlPBuffer<cr>

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
"nnoremap <tab> %
"vnoremap <tab> %

" add a buffer of a few lines above/below the current line when scrolling
set scrolloff=5

" make it easy to view snippets
nnoremap <leader>snip :vsp ~/.vim/plugged/vim-snippets/snippets/qsl.snippets<cr>

" make it easy to :vsp
nnoremap \\\ :vsp<cr>

" make it easy to :vsp a new scratch qsl document
" nnoremap \]\ :vsp n.qsl<cr>

" move through buffers
nnoremap <leader>[ :bprevious<cr>
nnoremap <leader>] :bnext<cr>

" show options in status bar when tab-completing ex commands
set wildmenu

" textwidth
set textwidth=0
autocmd FileType,BufNewFile,BufRead *.py :setlocal textwidth=79
autocmd FileType,BufNewFile,BufRead *.py :setlocal formatoptions+=t

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

" turn off the 'boxy' hydrangea string highlighting
"hi link String Include

" make comments italic
"highlight Comment cterm=italic
highlight Comment gui=italic

" Hotkey for :TagbarToggle
nnoremap <leader>tt :TagbarToggle<cr>

" make I go to the beginning of the line, ignoring whitespace
"nnoremap I 0i

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
" make :vsp open windows on the bottom instead of the top
set splitbelow

" turn off swap files
"set noswapfile

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

" save a keystroke changing panes
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-h> <c-w><c-h>

" duplicate this for normal-terminal mode
tnoremap <c-j> <c-w><c-j>
tnoremap <c-k> <c-w><c-k>
tnoremap <c-l> <c-w><c-l>
tnoremap <c-h> <c-w><c-h>

" remap key to enter terminal-normal mode
tnoremap <esc> <c-\><c-n>
tnoremap <m-[> <esc>

" make regexes more readable (turn on magic to level "very magic")
cnoremap s/ s/\v

" turn on unicode
set encoding=utf-8

" remap escape key to jk
inoremap jk <esc>
inoremap Jk <esc>

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
inoremap <c-o> <esc>la

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
inoremap "      ""<left>
inoremap ""     "

" turn on the matchit plugin to use % to jump between html and other tags
runtime macros/matchit.vim

" hide the special marks for showmark plugin
let showmarks_include="abcdefghilmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

" open the srg demos module in a browser
function! OpenDemos()
    silent! exec "silent! !open \"https://g4-us.yougov.net/\\#US_SRG_Demos_Module\""
endfunction
nnoremap <F15> :call OpenDemos()<cr>

function! Factorial()
python3 << EOF
import math
import vim

# pull in register z
mynum = vim.eval('getreg("z")')
# build a command for vim to execute
output = "setreg('z', " + str(math.factorial(int(mynum))) + ")"
# execute the command we built to reset the value of z
vim.eval(output)

EOF
endfunction
nnoremap <F6> viw"zy<esc>:call Factorial()<cr>diw"zP

" function to google word under cursor in a browser
function! GoogleSearch()
    let searchterm=getreg("z")
        silent! exec "silent! !open \"http://google.com/search?q=" . searchterm . "\""
endfunction
vnoremap <F7> viw"zy<esc>:call GoogleSearch()<cr>

function! DemoSearch()
    let searchterm=getreg("z")
        silent! exec "silent! !open \"https://datum.yougov.net/namespaces/panel:1/definitions/" . searchterm . "\""
endfunction
vnoremap <F5> "zy<esc>:call DemoSearch()<cr>

" shortcut to set qsl filetype
" embeds css highlighting inside of qsl highlighting
function! QSL()

    cd /Users/jason/qsl/

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
map <leader>qsl :call QSL()<cr>

" turn on cursor row highlighting
set cursorline

"Use TAB to complete when typing words, else inserts TABs as usual.
"Uses dictionary and source files to find matching words to complete.
"See help completion for source,
"Note: usual completion is on <c-n> but more trouble to press all the time.
"Never type the same word twice and maybe learn a new spellings!
"Use the Linux dictionary when spelling is in doubt.
"Window users can copy the file to their machine.
"function! Tab_Or_Complete()
"    if col('.') > 1 && strpart(getline('.'), col('.')-2, 3) =~ '^\w'
"        return "\<c-n>"
"    else
"        return "\<tab>"
"    endif
"endfunction
"inoremap <tab> <c-r>=Tab_Or_Complete()<cr>

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

" change the color of the 80th column highlight - doing this last because
" otherwise it's not executed (for some reason)
hi ColorColumn ctermbg=8

" make this toggle
nnoremap <leader>ch :call ColorColumnToggle()<cr>

let g:colorcolumn_is_on = 1

function! ColorColumnToggle()
    if g:colorcolumn_is_on
        set cc=
        let g:colorcolumn_is_on = 0
    else
        set cc=80
        let g:colorcolumn_is_on = 1
    endif
endfunction
