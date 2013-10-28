set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

filetype plugin on

set nocompatible

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

syntax on
filetype plugin indent on

autocmd BufRead *.vala,*.vapi set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
au BufRead,BufNewFile *.vala,*.vapi setfiletype vala

" Less syntax highlight
au BufNewFile,BufRead *.less set filetype=less

" Remove last spaces
autocmd BufWritePre * :%s/\s\+$//e

" Highlight last spaces
highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave,BufWinEnter * match ExtraWhitespace /\s\+$/
au ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

set wildignore+=*.o,*.obj,*.pyc,*.class
set wildignore+=.git
set wildignore+=node_modules
set wildignore+=*/target/*
set wildignore+=*/target-eclipse/*
set wildignore+=*.dvi,*.pdf
set wildignore+=*.jpg,*.png,*.tiff,*.gif
set wildignore+=*.orig,*.ser



" Bundels declaration

" Git wrapper of all time
Bundle 'tpope/vim-fugitive'
" Bundle 'ack.vim'
" This plugin is a front for ag, A.K.A. the_silver_searcher.
Bundle 'rking/ag.vim'
" automatically opens popup menu for completions
Bundle 'AutoComplPop'
" control p
Bundle 'ctrlp.vim'
" EasyMotion provides a much simpler way to use some motions in vim
Bundle 'EasyMotion'
" visualizing your undo tree to make it usable.
Bundle 'Gundo'
Bundle 'vim-less'
Bundle 'loremipsum'
" configure % to match more than just single characters
Bundle 'matchit.zip'
" TextMate's snippets features in Vim
Bundle 'snipMate'
" Sparkup lets you write HTML code faste
Bundle 'rstacruz/sparkup'
" provides mappings to easily delete, change and add such surroundings in pairs.
Bundle 'surround.vim'
" Tagbar displays the tags of the current file in a sidebar
Bundle 'Tagbar'
" works like a toggle
Bundle 'tComment'
" local marks
Bundle 'wokmarks.vim'
" Vim plugin for rebuilding tags files with ctags
Bundle 'rebtags'
" CoffeeScript support
Bundle 'kchmck/vim-coffee-script'
" plug-in manager for Vim
Bundle 'vundle'
" Easy file navigation and testing of Grails projects
Bundle 'grails-vim'
" A tree explorer plugin for navigating the filesystem
Bundle 'scrooloose/nerdtree'

" Bundels Configuration

" CTRLP Configuration
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_open_new_file = 't'
let g:ctrlp_open_multiple_files = 't'
let g:ctrlp_max_depth = 40
let g:ctrlp_max_height = '20'
let g:ctrlp_us_caching = 1
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'dir', 'rtscript',
                         \ 'undo', 'line', 'changes', 'mixed', 'bookmarkdir']
" Easymotion configuration
let g:EasyMotion_leader_key = '\'

" Vim-Coffee-Script
autocmd BufNewFile,BufRead *.coffee set filetype=coffee

" Tagbar
let g:tagbar_ctags_bin='/usr/bin/ctags'
let g:tagbar_type_groovy = {
  \ 'ctagstype' : 'groovy',
  \ 'kinds'     : [
  \ 'p:package',
  \ 'c:class',
  \ 'i:interface',
  \ 'f:function',
  \ 'v:variables',
  \ ]
\ }

" NERDTree
let NERDTreeIgnore = ['\~$', '\.tox$', 'dist', '\.o$', '\.sw[op]$', '\.pyc$', '\.egg-info$', '\.git$', '\.aux$', '\.bbl$', '\.blg$', '\.dvi$', '.DS_Store$', '.ropeproject','target$[[dir]]','build$[[dir]]']
let NERDTreeShowHidden = 1
let NERDTreeShowLineNumbers = 0
let NERDTreeSortOrder = ['\/$', '\.h$', '\.c$', '*']
let NERDTreeWinSize = 30
let NERDTreeShowBookmarks=1
let NERDTreeMinimalUI = 1

" NERDTree
map <S-w> :NERDTreeToggle<CR>


" bindings
" jk is space
imap jk <Esc>

" Spell cheking enabled by default
map <F6> <Esc>:setlocal spell spelllang=es<CR>

" CtrlP binding for ctags
nmap <C-L> :CtrlPTag<CR>

" Tabmove bindings
nmap <C-Up> :tabmove +1<CR>
nmap <C-Down> :tabmove -1<CR>

" Gundo Configuration
nnoremap <F5> :GundoToggle<CR>

" Moving on buffers
noremap <C-left> :bprev<CR>
noremap <C-right> :bnext<CR>

" Tagbar keybinding
map <F8> <ESC>:TagbarToggle<CR>
map <space> :tag <c-r><c-w><CR>


" RebTags keybinding
map <F9> <ESC>:RebuildTags<CR>

"source ~/.vim/bundles.vim
"source ~/.vim/abbreviations.vim
"source ~/.vim/bindings.vim
